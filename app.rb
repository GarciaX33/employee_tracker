require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require('./lib/department')
require('./lib/employee')
also_reload('lib/**/*.rb')
require("pg")
require('pry')

get("/") do
  @departments = Department.all()
  erb(:index)
end

post("/departments") do
  name = params.fetch(:department_name)
  department = Department.new({:department_name => name})
  department.save()
  @departments = Department.all()
  erb(:index)
end

get("/departments/:id") do
  @department = Department.find(params.fetch("id").to_i())
  erb(:add_employees)
end
