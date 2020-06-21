# Variables
name = "John"
# p name

# Arrays
names = ["John", "Jim"]
# p names[0]
# p names[1]

# Hashes
employee = { name: "John", age: 25 }
# p employee[:name]
# p employee[:age]


# Loops
names.each do |name|
  # p name
end


# Conditionals
# if employee[:age] >= 60
#   p "Employee has retired"
# else
#   p "#{employee[:name]} has not retired"
# end


# Functions
def employee_details(e)
  p e[:name]
end

# employee_details(employee)


# Classes & Objects
class Student
  def print_this
    p "This has been printed"
  end
end

s = Student.new
s.print_this

