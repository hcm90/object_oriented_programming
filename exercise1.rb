class Person
	attr_accessor :name
	attr_accessor :eye_color
	attr_accessor :height
	def initialize(name, eye_color, height)
		@name = name
		@eye_color = eye_color
		@height = height
	end
	def greeting
		puts "Hi, my name is #{name}."
	end
end
class Student < Person
	def learn	
		puts "I get it!"
	end
end
class Instructor < Person
	def teach
		puts "Everything in Ruby is an object."
	end
end

instructor1 = Instructor.new("Chris", "hazel", "very tall")
	instructor1.greeting
	puts "#{instructor1.name} has #{instructor1.eye_color} eyes and is #{instructor1.height}."
student1 = Student.new("Cristina", "blue", "short")
	student1.greeting
	puts "#{student1.name} has #{student1.eye_color} eyes and is #{student1.height}."

instructor1.teach
student1.learn

student1.teach # Won't work: method "teach" does not belong to the "student" class



#Remember, just because you've made a new instrutor
#instance, it doesn't mean that it's concrete.
#You need to set it to a variable if you'd like to call
#its properties. Take a look at the example above.