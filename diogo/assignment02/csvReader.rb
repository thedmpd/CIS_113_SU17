#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 2
Date: 06/25/2017
=end

require 'csv'
require_relative 'bookInStock'

class CsvReader
	def initialize
		@bookInStock = []
	end

	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			@bookInStock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end
	
	def total_value_in_stock
		sum = 0.0
		@bookInStock.each {|book| sum += book.price}
		sum
	end

	def number_of_each_isbn
		number = 0
		@bookInStock.each {|book| number += book.isbn}
		number
	end
end

