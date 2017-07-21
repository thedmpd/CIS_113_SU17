#!/usr/bin/ruby
=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 3
Date: 06/30/2017
=end

##Question 1##
=begin
1. For the below arrays defined, what will be the value returned for "arr"?
=end

##Part A##
arr = ["b", "a"] #create an array with length of 2 objects [b, a]
arr = arr.product(Array(1..3)) #multiply each object with each object
# so that array [b, a] with array [1, 2, 3] equals
# result [ [b, 1], [b, 2], [b, 3], [a, 1], [a, 2], [a, 3] ]
arr.first.delete(arr.first.last) #will access the first object of arr and then
#delete the first object of arr's last object
#result [ b, [b, 2], [b, 3], [a, 1], [a, 2], [a, 3] ]
##Part B##
arr = ["b", "a"] #create an array with length of 2 objects [b, a]
arr = arr.product([Array(1..3)]) #multiply each object of arr with Array object
# so that array [b, a] is multiplied against the whole Array [1, 2, 3] equals
# result [ [b, [1, 2, 3]], [a, [1, 2, 3]] ]
arr.first.delete(arr.first.last) #will access the first object of arr and then
# delete the first object of arr's last object which is the array [1, 2, 3]
#result [ b, [a, [1, 2, 3]] ]

##Question 2##
=begin
2. For the below array, how do you print the word "example" from this array?
=end
puts "----Q2----"
arr = [["test","hello","world"],["example","mem"]]
puts arr[1][0] #will access the second object["example","mem"] and then access
# the first object of "example"
puts arr.last.first #this will do the same thing for this case but only because
# it's the last object, we would not be able to use this same format for the
# sixth element of an array if there was a seventh object in the array.

##Question 3##
=begin
3. For the below array, what value is returned from "arr"?
=end

arr = [15, 7, 18, 5, 12, 8, 5, 1]
##Part A##
arr.index(5) #will return the index of first location of object 5 => 3
##Part B##
=begin
arr.index[5] This is an error, there is no iterator for index
=end
##Part c##
arr[5] #will return the value of the object at index 5 => 8

##Question 4##
=begin
4. What is the value of "a", "b", "c" in the following array definition?
=end

string = "Welcome to Ruby Programming!"
a = string[6] # a has a value of 'e'
b = string[11] # b has a value of 'R'
c = string[19] # c has a value of 'g'

##Question 5##
=begin
5. When you run the following code, you receiver an error.
Please suggest how to fix this error.
=end

names = ['bob', 'joe', 'susan', 'margaret'] #this portion of the code is good
#names['margaret'] = 'jody' ##if the goal is to replace margaret with jody in 
# the array of objects then we would need to execute the following code:
names[3] = 'jody'

##Question 6##
=begin
6. Write a program that iterates over an array and builds a new array that is
 the result of incrementing each value in the original array by a value of 2.
 You should have two arrays at the end of this program. The original array 
 and the new array you've created. 
Print both arrays to the screen.
=end
puts "----Q6----"
increase = 2
first_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sec_array = []
first_array.each do |number|
	sec_array.push(number + increase)
end

#print the first array
puts "First array:", first_array.join(" ")
#print the second array
puts "Second array:", sec_array.join(" ")

##Question 7##
=begin
7. Given the family of hash members, with keys as the title and an array of names
 as the values, use the Ruby’s built in method to gather immediate family members
 (“brothers” and “sisters”) only into a new array.
=end
puts "----Q7----"
family = { uncles: ["bob", "joe", "steve"],
	sisters: ["jane", "jill", "beth"],
	brothers: ["frank", "rob", "david"],
	aunts: ["mary", "sally", "susan"]
	}
immediate_family = []
immediate_family.push(family.values_at(:sisters, :brothers))
print "sisters and brothers: ", immediate_family.join(","), "\n"

##Question 8##
=begin
8. Given the following expression, please identify the "name" of the person.
=end
puts "----Q8----"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
#name would be Bob
print "Name of person is: ", person.values_at(:name).first, "\n"

##Question 9##
=begin
9. Given the following code, what is the difference between the two "hashes" that are created below?
=end
puts "----Q9----"
x = "hi there"
my_hash = {x: "some value"} #this creates a hash with a key of literal 'x'
my_hash2 = {x => "some value"} #this creates a hash with a key of the object x
puts "Keys of my_hash:", my_hash.keys #will print x
puts "Keys of my_hash2:", my_hash2.keys #will print 'hi there'

##Question 10##
=begin
10. What method could you use to find out if the hash contains a specific value
in it. Write a small program to demonstrate the usage.
=end
puts "----Q10----"
#You could use the #value? method to find out if a specific value is inside
false_value = "Diogo"
message = "Value lookup: does '" + false_value + "' exist in my_hash2? "
true_value = "some value"
message2 = "Value lookup: does '" + true_value + "' exist in my_hash2? "
print "Contents of my_hash2: ", my_hash2, "\n"
print message, my_hash2.value?(false_value), "\n" #print false
print message2, my_hash2.value?(true_value), "\n" #print true
