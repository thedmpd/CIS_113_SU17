#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 2
Date: 06/25/2017
=end

class RubyRailsClass
	def print_ruby_method(input_name)
		@classname = input_name
		puts "#{@classname}"
	end
end

rubyclass = RubyRailsClass.new
rubyclass.print_ruby_method("Ruby Programming")

class PhpClass
	def print_php_method(input_name)
		@classname = input_name
		puts "#{@classname}"
	end
end

phpclass = PhpClass.new
phpclass.print_php_method("Php Programming")

#RESULTS
=begin
Ruby Programming
Php Programming
=end
