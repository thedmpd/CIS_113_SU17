#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 2
Date: 06/25/2017
=end

$global_variable = 'Ruby Programming'

class RubyRailsClass
	def print_ruby_method
		puts "#{$global_variable}"
	end
end

rubyclass = RubyRailsClass.new
rubyclass.print_ruby_method

class PhpClass
	def print_php_method
		puts "#{$global_variable}"
	end
end

phpclass = PhpClass.new
phpclass.print_php_method

#RESULTS
=begin
Ruby Programming
Ruby Programming
=end
