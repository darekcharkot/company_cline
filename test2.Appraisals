# Company
class Company
  def initialize(name: nil, address: nil, business_sector: nil)
    @name = name
    @address = address
    @business_sector = business_sector
  end

  def employees
    @employees ||= []
  end

  def add_employees(*employees_to_add)
    employees.concat(employees_to_add)
  end

  def remove_employees(id)
    employees.delete_if { |e| e.id == id }
  end

  def remove_employee_by_name(first_name)
    employees.delete_if { |e| e.first_name == first_name }
  end

  attr_reader :name, :address, :business_sector
end

# Class Employees
class Employees
  def initialize(id: nil, first_name: nil, last_name: nil, age: nil, profession: nil, role: 'standard')
    @id = id
    @first_name = first_name
    @last_name = last_name
    @age = age
    @profession = profession
    assign_rolle(role)
  end

  def subordinates
    @subordinates ||= []
  end

  def add_subordinates(employe)
    if role == 'standard'
      puts 'subordinates role standard'
      return
    elsif employe.role == 'manager'
      puts 'Employee role manager'
      return
    end
    subordinates << employe
  end

  def role=(new_role)
    assign_rolle(new_role)
    remove_all_subordinates if role == 'standard'
  end

  attr_reader :id, :first_name, :last_name, :age, :profession, :role

  private

  def remove_all_subordinates
    @subordinates = []
  end

  def assign_rolle(new_role)
    @role = new_role == 'manager' ? new_role : 'standard'
  end
end

c = Company.new
c.employees.count
e = Employees.new
e1 = Employees.new

e.role = 'manager'
e.add_subordinates(e1)
puts e.subordinates

