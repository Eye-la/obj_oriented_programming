#Object Oriented Programming: Exercise 1

class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    "Hi, my name is #{@name}."
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach 
    puts "Everything in Ruby is an Object."
  end
end


#6. Instuctor Chris
instructor = Instructor.new("Chris")
puts instructor

#7. Student Cristina
student = Student.new("Cristina")
puts student


#8.
instructor.teach
student.learn

#student.teach 

#Error to undefined method; teach is not a method for the class student. 
#If learn is a branch of Student and teach is a branch of Instructor then 
#teach cannot communicate to Student. They are not from the same branch.

