=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#5
16-July-2017
=end

def get_thousands(num)
  thousands = num/1000
  return thousands
end

def get_hundreds(num)
  hundreds = (num%1000)/100
  return hundreds
end

def get_tens(num)
  tens = (num%100)/10
end

def get_ones(num)
  ones = num%10
end

puts "Enter 4 digit number to analyze"
original_number = gets.chomp
if original_number.length != 4
  puts "Not a 4 digit number, please try again"
else
  original_number = original_number.to_i
  puts "Thousands are #{get_thousands(original_number)}"
  puts "Hundreds are #{get_hundreds(original_number)}"
  puts "Tens are #{get_tens(original_number)}"
  puts "Ones are #{get_ones(original_number)}"
end

