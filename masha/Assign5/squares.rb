=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#5
16-July-2017
=end

def square(num)
  square = (num * num).round(2)
end

for i in 0..2 do
  puts "Round #{i+1}: Enter number to calculate square for"
  num = gets.chomp
  puts "The square of #{num} is #{square(num.to_f)}"
end