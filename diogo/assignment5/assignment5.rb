#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment
#: 5
07/16/2017
=end

puts "String Questions"

##QUESTION 1##
=begin
1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
=end
puts "\nQuestion 1:"

first_name = "Diogo"
last_name = "Delgado"
full_name = first_name + " " + last_name
puts "First Name: #{first_name} | Last Name: #{last_name}"
puts "Full name: #{full_name}"

##Question 2##
=begin
2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
	1) thousands place
	2) hundreds place
	3) tens place
	4) ones place
=end
puts "\nQuestion 2:"

number = 5461234
puts "Number: #{number}"
puts "Thousands place: #{(number % 10000) / 1000}"
puts "Hundreds place: #{(number % 1000) / 100}"
puts "Tens place: #{(number % 100) / 10}"
puts "Ones place: #{number % 10}"

##Question 3##
=begin
3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.
=end
puts "\nQuestion 3:"

def question_3_program(movie_hash)

	movie_hash.each do |movie, year|
		puts year
	end
end

movie_year = {
	"Rambo": 1975,
	"Stone Age": 2004,
	"Why?": 2013,
	"The End": 2001,
	"Rambo 2": 1981
	}
question_3_program(movie_year)

##Question 4##
=begin
4. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
=end
puts "\nQuestion 4:"

def question_4_program(list_of_floats)
	list_of_floats.each do |float|
		if float.finite?
			puts "Float: #{float} squared is #{(float ** 2).round(4)}"
		else
			puts "Invalid IEEE float"
		end
	end
end

a_list = [19.0, 1.22, 2.001]
question_4_program(a_list)
