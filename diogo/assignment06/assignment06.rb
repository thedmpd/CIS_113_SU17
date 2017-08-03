#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment
#: 6
7/23/2017
=end

##Question 1##
=begin
Identify if the following expressions return “TRUE” or “FALSE” . Please type the following expressions on “irb”.

1.(32 * 4) >= 129
=> false
2.false != !true
=>false
3.true == 4
=>false
4.false == (847 == '874')
=>true
5.(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
=>true

#IRB SHELL#
diogo@Zeus:~$ irb
irb(main):001:0> (32 * 4)
=> 128
irb(main):002:0> (32 * 4) >= 129
=> false
irb(main):003:0> false != !true
=> false
irb(main):004:0> true == 4
=> false
irb(main):005:0> false == (847 == '847')
=> true
irb(main):006:0> (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
=> true
irb(main):007:0> exit
=end

##Question 2##
=begin
Identify the results of the following expressions using “irb” shell.
1.   
'4' == 4 ? puts("TRUE") : puts("FALSE")
Output: FALSE
2.    
x = 2   
if ((x * 3) / 2) == (4 + 4 - x - 3)
	puts "Did you get it right?"   
else
	puts "Did you?"
end
Output: Did you get it right?
3.   
y = 9
x = 10
if (x + 1) <= (y)
	puts "Alright."
elsif (x + 1) >= (y)
	puts "Alright now!"
elsif (y + 1) == x
	puts "ALRIGHT NOW!"
else
	puts "Alrighty!"
end
Output: Alright now!

#IRB SHELL#
diogo@Zeus:~$ irb
irb(main):001:0> '4' == 4 ? puts("TRUE") : puts("FALSE")
FALSE
=> nil
irb(main):002:0> x = 2
=> 2
irb(main):003:0> if ((x * 3) / 2) == )4 + 4 - x - 3)
SyntaxError: (irb):3: syntax error, unexpected ')'
if ((x * 3) / 2) == )4 + 4 - x - 3)
                     ^
(irb):3: syntax error, unexpected ')', expecting end-of-input
	from /usr/bin/irb:11:in `<main>'
irb(main):004:0> if ((x * 3) / 2) == (4 + 4 - x - 3)
irb(main):005:1> puts "Did you get it right?"
irb(main):006:1> else
irb(main):007:1* puts "Did you?"
irb(main):008:1> end
Did you get it right?
=> nil
irb(main):009:0> y = 9
=> 9
irb(main):010:0> x - 10
=> -8
irb(main):011:0> x = 10
=> 10
irb(main):012:0> if (x + 1) <= (y)
irb(main):013:1> puts "Alright."
irb(main):014:1> elsif (x + 1) >= (y)
irb(main):015:1> puts "Alright now!"
irb(main):016:1> elsif (y + 1) == x
irb(main):017:1> puts "ALRIGHT NOW!"
irb(main):018:1> else
irb(main):019:1* puts "Alrighty!"
irb(main):020:1> end
Alright now!
=> nil
irb(main):021:0> exit
=end

##Question 3##
=begin
When you run the following code, you will get the error message. Please identify what is wrong with the code and how to fix the error message.
def equal_to_four(x)
      if x == 4
        puts "yup"
      else        
	puts "nope"
end
equal_to_four(5)
test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end

ANSWER: The def is missing an end, the end that is currently acknowledged closes the if statement, so one more end statement is needed to close the def statement. The code below will run and out put "nope".
=end
def equal_to_four(x)
	if x == 4
		puts "yup"
	else
		puts "nope"
	end
end
puts "Question 3:"
equal_to_four(5)


##Question 4##
=begin
4.Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, Or between 51 and 100 Or if it is above 100. 
Note: Please use “If .... Elsif .... Else”  for this program.
=end

def check_if_num_from_0_100()
	puts "Please put in a number between 0 and 100:"
	number = gets.chomp.to_i
	if number > 100
		puts "Your number is greater than 100."
	elsif number >= 51
		puts "Your number is between 51 and 100."
	elsif number >= 0
		puts "Your number is between 0 and 50."
	else
		puts "Your number is less than 0."
	end
end
puts "Question 4:"
check_if_num_from_0_100()

##Question 5##
=begin
5.Rewrite the above program in Question#4 using “CASE statement”.
=end

def check_if_num_case()
	puts "Using case, put in a number between 0 and 100:"
	number = gets.chomp.to_i
	case
	when number < 0
		puts "Your number is less than 0."
	when number >= 0 && number <= 50
		puts "Your number is between 0 and 50."
	when number >= 51 && number <= 100
		puts "Your number is between 51 and 100."
	else
		puts "Your number is greater than 100."
	end
end

puts "Question 5:"
check_if_num_case()

#OUTPUT#
=begin
diogo@Zeus:~/Desktop/ruby_class/diogo/assignment06$ ./assignment06.rb 
Question 3:
nope
Question 4:
Please put in a number between 0 and 100:
6
Your number is between 0 and 50.
Question 5:
Using case, put in a number between 0 and 100:
6
Your number is between 0 and 50.
diogo@Zeus:~/Desktop/ruby_class/diogo/assignment06$ ./assignment06.rb 
Question 3:
nope
Question 4:
Please put in a number between 0 and 100:
51
Your number is between 51 and 100.
Question 5:
Using case, put in a number between 0 and 100:
51
Your number is between 51 and 100.
diogo@Zeus:~/Desktop/ruby_class/diogo/assignment06$ ./assignment06.rb 
Question 3:
nope
Question 4:
Please put in a number between 0 and 100:
100
Your number is between 51 and 100.
Question 5:
Using case, put in a number between 0 and 100:
100
Your number is between 51 and 100.
diogo@Zeus:~/Desktop/ruby_class/diogo/assignment06$ ./assignment06.rb 
Question 3:
nope
Question 4:
Please put in a number between 0 and 100:
101
Your number is greater than 100.
Question 5:
Using case, put in a number between 0 and 100:
101
Your number is greater than 100.
=end
