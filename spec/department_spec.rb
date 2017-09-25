require('spec_helper')

describe(Department) do

  describe("#employee") do
    it("says what employees are in it") do
      test_department = Department.create({:department_name => "Human Resources"})
      test_employee1 = Employee.create({:name => "Sarah", :department_id => test_department.id})
      test_employee2 = Employee.create({:name => "John", :department_id => test_department.id})
      expect(test_department.employees()).to(eq([test_employee1, test_employee2]))
    end
  end
end
