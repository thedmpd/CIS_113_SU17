=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#3
29-June-2017
=end

def add_two(original_num)
  new_num = original_num + 2
end

original_array = [1, 3, 5, 8, 13, 21, 34, 55, 89]
new_array = []

for i in 0..original_array.length-1
  new_array[i] = add_two(original_array[i])
end

puts "Original array = #{original_array}"
puts "New array      = #{new_array}"