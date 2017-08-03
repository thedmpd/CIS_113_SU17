# If-else control structure
today = Time.now
if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end

# While control structure
# while line = gets
#  puts line.downcase
# end

# Statement modifiier
radiation = 4000
puts "Danger, Will Robinson" if radiation > 3000

square = 4
square = square*square while square < 1000
puts "Square is #{square}"