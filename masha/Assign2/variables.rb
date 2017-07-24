=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#2
24-June-2017

NOTE: I've assembled all the examples in a single file instead of having several small files
=end

# Class to print a header for each type of variable
class PrintHeader
  def print_now(header_name) # Method that'll accept a string to place in the header
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "#{header_name}"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  end
end

# Prints the first header for Global Variables Example
printheader = PrintHeader.new
printheader.print_now("Global Variables")

# Global variable example
$global_variable = "Ruby Programing"

class GlobalRubyRailsClass
  def print_ruby_menthod
    puts "#{$global_variable}"
  end
end
rubyclass = GlobalRubyRailsClass.new
rubyclass.print_ruby_menthod

class GlobalPhpClass
  def print_php_method
    puts "#{$global_variable}"
  end
end

phpclass = GlobalPhpClass.new
phpclass.print_php_method
# End of Global Variable Example

# Prints the second header for Instance Variables Example
puts ""
printheader.print_now("Instance Variables")

# Instance Variable Example
class InstanceRubyRailsClass
  def print_ruby_method(input_name)
    @classname = input_name
    puts "#{@classname}"
  end
end

rubyclass = InstanceRubyRailsClass.new
rubyclass.print_ruby_method("Ruby Programming")

class InstancePhpClass
  def print_php_method(input_name)
    @classname = input_name
    puts "#{@classname}"
  end
end

phpclass = InstancePhpClass.new
phpclass.print_php_method("Php Programming")
# End of Instance Variable Example

# Prints the third header for Class Variables Example
puts ""
printheader.print_now("Class Variables")

# Class Variable Example
class ClassRubyRailsClass
  @@classname = "Ruby Programming"

  def print_ruby_method(input_name)
    @classname = input_name
    puts "#{@classname}"

    if @@classname == @classname then
      puts "Classname is the same"
    else
      puts "Classname is different"
    end
  end
end

rubyclass = ClassRubyRailsClass.new
rubyclass.print_ruby_method("Ruby Programming")
rubyclass.print_ruby_method("Php Programming")
# End of Class Variable Example

# Prints the fourth header for Instance Variables Example
puts ""
printheader.print_now("Local Variables")

# Local Variable Example
class LocalRubyRailsClass
  @@classname = "Ruby Programming"

  def print_ruby_method(input_name)
    class_name_local = "Internet Programming"
    @classname = input_name
    puts "#{@classname}"
    if @@classname == class_name_local then
      puts "Classname is the same"
    else
      puts "Classname is different"
    end
  end
end

rubyclass = LocalRubyRailsClass.new
rubyclass.print_ruby_method("Ruby Programming")
rubyclass.print_ruby_method("Php Programming")
# End of Global Variable Example
