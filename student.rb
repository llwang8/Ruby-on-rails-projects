#Simple showcase of methods, arrays, and data


#class Student
#	attr_reader :first_name, :last_name, :grade

#	def initialize(first_name, last_name, grade)
#		@first_name = first_name
#		@last_name = last_name
#		@grade = grade
#	end

#Student = Struct.new(:first_name, :last_name, :grade) do
class Student < Struct.new(:first_name, :last_name, :grade)
	
	def senior?
		grade == 12
	end

	def junior?
		grade == 11
	end

	def to_s
		"#{last_name}, #{first_name}"
	end
end

def seniors(students)
	students.select {|student| student.senior?}
end

def juniors(students)
	students.select {|student| student.junior?}
end

fred = Student.new("Fred", "James", 12)
sarah = Student.new("Sarah", "Smith", 12)
jack = Student.new("Jack", "Gong", 10)
all_students = [fred, sarah, jack]

seniors(all_students).each do |student|
	puts student
end

juniors(all_students).each do |student|
	puts student
end