=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#5
16-July-2017
=end

movies = {}
movies["2001: A Space Odyssey"] = "1968"
movies["Stalker"] = "1982"
movies["Alien"] = "1979"
movies["Planet of Apes"] = "1968"

movies.each_value {|value| puts "#{value}"}