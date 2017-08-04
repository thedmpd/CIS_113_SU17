#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: Final
08/03/2017
=end

##QUESTION 1##
=begin
1. Write a Ruby method that takes integer as a parameter. Call this method with an integer value of 5 and perform all the arithmetic operations “+”, “-“, “*”, “/” on this integer by itself. 
Print the output of each of the arithmetic operation.
=end

puts("###### Question 1 ######")
def question_one(num)
	if !(num.is_a? Integer)
		puts("Value entered is not an Integer.")
		return false
	else
		#holder to reset num to its original value after each operation
		holder = num
		puts("Addition: #{num += num}")
		num = holder
		puts("Subtraction: #{num -= num}")
		num = holder
		puts("Multiplication: #{num *= num}")
		num = holder
		puts("Division: #{num /= num}")
	end
	return true
end
question_one(5)

##QUESTION 2##
=begin
2. Write a Ruby method that takes no arguments. The method should perform the following FOUR control statements which iterate through the values from 1 to 10. 
Please print the output of the integer after iteration for these.
FYI, you could choose “for loop”, “while loop”, “do loop”, “upto” or “for each” etc to iterate through the integers and print the output.
=end

puts("\n###### Question 2 ######")
def question_two()
	#for loop
	for i in 1..10
		puts("For loop: #{i}")
	end
	#each iterator
	(1..10).each do |i|
		puts("Each loop: #{i}")
	end
	#upto iterator
	1.upto(10) {|i| puts("Upto: #{i}")}
	#old school still cool while loop
	i = 1
	while i <= 10
		puts("While loop: #{i}")
		i += 1
	end
end
question_two()

##QUESTION 3##
=begin
3. Include the following program in a method and execute the program. Display the output of the following program when this method is called.

a = [] 
b = [1,2] 
a[0] = b 
a[1] = [1,2] 
puts (a[0] == a[1])
=end

puts("\n###### Question 3 ######")
def question_three()
	a = []
	b = [1,2]
	a[0] = b
	a[1] = [1, 2]
	puts (a[0] == a[1])
end
question_three()

##QUESTION 4##
=begin
4. Execute the following program and display the output of the following program when both “method1” and “method3” is called.

def method1 x`
	x = 11 
	method2 do |x| 
		puts x 
	end 
end 

def method2 
	x = 22 
	yield 33 
end 

def method3 
	x = 11 
	method2 do |y| 
		puts x 
	end 
end 
=end

puts("\n###### Question 4 ######")
def question_four()
	def method1#The "x`" was a typo correct? Otherwise it would not execute
		x = 11
		method2 do |x|
			puts x
		end
	end

	def method2
		x = 22
		yield 33
	end
	
	def method3
		x = 11
		method2 do |y|
			puts x
		end
	end
	#execute method1
	puts("Method 1: ")
	method1()
	#execute method3
	puts("Method 3: ")
	method3()
end
question_four()

##QUESTION 5##
=begin
5. Write a method that takes integer value of 100. 
The function should implement a CASE statement that will incorporate the following:
a. CASE statement compares with a number less than 100 and print the output accordingly.
b. CASE statement compares with a number that happens to be square root of 100 and print the relevant output.
c. CASE statement has a default ELSE statement that prints a relevant output if the comparison is not valid.
=end

puts("\n###### Question 5 ######")
def question_five(num)
	if !(num.is_a? Integer)
		puts("Not an Integer.")
		return false
	else
		#SET COMPARISON NUMBER
		comparison = 100
		case
		when num.to_f() == Math.sqrt(comparison.to_f())
			puts("#{num} is equal to #{Math.sqrt(comparison)}.")
		when num < comparison
			puts("#{num} is less than #{comparison}.")
		else
			puts("#{num} is not less than #{comparison}" +
				" nor equal to #{Math.sqrt(comparison)}.")
		end
	end
end
question_five(100)
question_five(10)
question_five(76)

##QUESTION 6##
=begin
6. Create a variable that can hold integer values from 1 to 10. Use the “to_a” method to convert the object into an array and print the output of this variable.

Hint: You can create a variable like a = (1..10) and then use “to_a” method to convert this to an array before printing.
=end

puts("\n###### Question 6 ######")
def question_six()
	number_six = 1..10
	number_six = number_six.to_a
	number_six.each do |x|
		puts("Array content: #{x}")
	end
	puts("Full array: #{number_six.join(' ')}.")
end
question_six()

##QUESTION 7##
=begin
7. Create a method that takes multiple parameters as input. The method should perform the following steps and print the relevant output as follows.
1. The method prints the length of parameters.
2. The method iterates through all the parameters and print those in sorted order.
=end

puts("\n###### Question 7 ######")
def question_seven(first, second, third, fourth)
	l_args = [first, second, third, fourth]
	#print the length of parameters
	l_args.each do |arg|
		puts("'#{arg}'s length is #{arg.to_s().length()}")
	end
	#sort and print out the sorted order by length
	l_args = l_args.sort_by { |f| [f.to_s().length()] }
	puts("Sorted length order of the array: #{l_args.join(' ')}.")
end
question_seven("hi", 23231, "who", 3)

##QUESTION 8##
=begin
8. Write a method that takes no arguments.
Create an array with the following numbers [6, 2, 1, 1] sort this array using (sort) function 

Create another array with the following numbers [6, 2, 1, 1]. Sort this array using (sort!) function 

Print the output of both the arrays when this method is called and analyze output of the both the arrays.
=end

puts("\n###### Question 8 ######")
def question_eight()
	first = [6, 2, 1, 1]
	first.sort
	second = [6, 2, 1, 1]
	second.sort!
	puts("Usage of (sort): #{first.join(' ')}")
	puts("Usage of (sort!): #{second.join(' ')}")
end
question_eight() 
