=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#2
23-June-2017
=end

class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
end