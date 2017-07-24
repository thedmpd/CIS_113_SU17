=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#3
28-June-2017
=end

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end