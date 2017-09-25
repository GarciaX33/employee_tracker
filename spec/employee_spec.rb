require('spec_helper')

describe(Employee) do

  describe("#department") do
    it("desribes which department an employee belongs to") do
      test_department = Department.create({:department_name => "Human Resources"})
      test_employee = Employee.create({:name => "Sarah", :department_id => test_department.id})

      expect(test_department.employees()).to(eq([test_employee]))
    end
  end
end
