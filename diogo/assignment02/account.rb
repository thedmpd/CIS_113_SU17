#!/usr/bin/ruby

=begin
Diogo M Delgado
diogodelgado@my.smccd.edu
CIS 113
Assignment #: 2
Date: 06/25/2017
=end

class Account
	attr_accessor	:balance
	attr_reader	:cleared_balance
	protected	:cleared_balance

	def initialize(balance)
		@balance = balance
	end

	def greater_balance_than?(other)
		@cleared_balance > other.cleared_balance
	end

	def to_s
		"Account balance: #{balance}"
	end
end

class Transaction

	def initialize(account_a, account_b)
		@account_a = account_a
		@account_b = account_b
	end

private
	def debit(account, amount)
		account.balance -= amount
	end

	def credit(account, amount)
		account.balance += amount
	end

public
	def transfer(amount)
		debit(@account_a, amount)
		credit(@account_b, amount)
	end
end

savings = Account.new(100)
checking = Account.new(200)
puts "Savings balance: #{savings}"
puts "Checking balance: #{checking}"

trans = Transaction.new(checking, savings)
trans.transfer(50)
puts"=======After transfer======="
puts "Savings balance: #{savings}"
puts "Checking balance: #{checking}"

#RESULTS
=begin
Savings balance: Account balance: 100
Checking balance: Account balance: 200
=======After transfer=======
Savings balance: Account balance: 150
Checking balance: Account balance: 150
=end
