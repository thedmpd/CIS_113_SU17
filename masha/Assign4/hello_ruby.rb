=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#4
09-July-2017
=end

module HelloRuby
  def say_hello
    p ("Hello Programming Ruby...")
  end
end

class ModuleClass
  include HelloRuby
end

my_test = ModuleClass.new
my_test.say_hello
