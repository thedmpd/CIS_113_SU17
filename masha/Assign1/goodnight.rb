def say_goodnight_simple(name)
  result = "Good night, " + name
  return result
end
puts say_goodnight_simple("John-Boy")
puts say_goodnight_simple("Mary-Ellen")

def say_goodnight_extrapolation(name)
  result = "Good night, #{name}"
  return result
end
puts say_goodnight_extrapolation('Pa')

def say_goodnight_caps(name)
  result = "Good night, #{name.capitalize}"
  return result
end
puts say_goodnight_caps('uncle')
