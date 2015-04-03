#Object Oriented Programming: Exercise 1

class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}."
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
instructor.greeting
instructor.teach

#7. Student Cristina
student = Student.new("Cristina")
student.greeting
student.learn

#8.
instructor.teach
student.learn

#student.teach 
#error to undefined method; teach is not a method for the class student. 

