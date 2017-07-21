#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment 4
07/09/2017
=end

module HelloRuby
	def say_hello
		puts "Hello Programming Ruby.."
	end
end

class ModuleClass
	include HelloRuby

	def this_is_cool
		say_hello
	end
end

invoke = ModuleClass.new
puts "Invoking the inherited method say_hello from an object of class ModuleClass"
invoke.say_hello
puts "Invoking the inherited method inside one of the classes methods"
invoke.this_is_cool

##QUESTION 1##

=begin
Yes. Since class D is a child of class C and class C includes module M, then D will have access to the method report inside of of module M.
=end

module M
	def report
		puts "This is a report method of Module M"
	end
end

class C
	include M
end

class D < C
end

puts "Output of Question 1:"
obj = D.new
obj.report

##Question 2##

=begin
In this case, because both modules include a report function, then the last one that is included will overwrite the previous one. In this case an instance of class C will print out "This is a report method of module N" when the report function is called.
=end

module M
	def report
		puts "This is report method of module M"
	end
end

module N
	def report
		puts "This is report method of module N"
	end
end

class C
	include M
	include N
end

puts "Output of Question 2:"
c = C.new
c.report
