=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#3
28-June-2017
=end

def count_frequency(word_list)
  counts = Hash.new(0)
for word in word_list
  counts[word] += 1
end
counts
end