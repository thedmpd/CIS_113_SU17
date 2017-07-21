#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 2
Date: 06/25/2017
=end

class RubyRailsClass
	@@classname = "Ruby Programming"
	def print_ruby_method(input_name)
		class_name_local = "Internet Programming"
		@classname = input_name
		puts "#{@classname}"

		if @@classname == class_name_local then
			puts "Classname is the same"
		else
			puts "Classname is different"
		end
	end
end

rubyclass = RubyRailsClass.new
rubyclass.print_ruby_method("Ruby Programming")
rubyclass.print_ruby_method("Php Programming")

#RESULTS
=begin
Ruby Programming
Classname is different
Php Programming
Classname is different
=end
