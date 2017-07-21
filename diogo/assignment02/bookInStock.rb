#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 2
Date: 06/25/2017
=end

class BookInStock
	# can use attribute reader to access the variables of an object
	attr_reader :isbn
	# can use attr_accessor to access and change variables of an object
	attr_accessor :price
	
	# initialize the class object
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end
	
	# overwrite the to_s method so that it returns the format we want
	def to_s
		"ISBN: #{@isbn}, price: #{price}"
	end

	# get an exact amount in dollar cents
	def price_in_cents
		Integer(price * 100 + 0.5)
	end
	
	# allow change for price in cents
	def price_in_cents=(cents)
		@price = cents / 100.0
	end	
end

#Needed to be commented out since it was running when the class was called
#book = BookInStock.new("isbn1", 33.80)
#puts "Price		= #{book.price}"
#puts "Price in cents	= #{book.price_in_cents}"
#book.price_in_cents = 1234
#puts "Price		= #{book.price}"
#puts "Price in cents	= #{book.price_in_cents}"

#RESULTS
=begin
Price		= 33.8
Price in cents	= 3380
Price		= 12.34
Price in cents	= 1234
=end
