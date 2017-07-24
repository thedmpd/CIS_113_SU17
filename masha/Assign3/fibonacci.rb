=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#3
28-June-2017
=end

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
yield i1
i1, i2 = i2, i1+i2
  end
end
fib_up_to(1000) {|f| print f, " " }
puts