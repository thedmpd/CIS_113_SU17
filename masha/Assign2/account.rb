=begin
Mariya Khokhlova
mariyakhokhlova@my.smccd.edu
CIS113
Assignment#2
23-June-2017
=end

class Account
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  attr_reader :cleared_balance # accessor method 'cleared_balance'
  protected :cleared_balance # but make it protected
  def greater_balance_than?(other)
    @cleared_balance > other.cleared_balance
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
puts "Savings before transaction = #{savings.balance}"
checking = Account.new(200)
puts "Checking before transaction = #{checking.balance}"
trans = Transaction.new(checking, savings)
trans.transfer(80)
savings_result = savings.balance
puts "Savings after transaction = #{savings_result}"
checking_result = checking.balance
puts "Checking after transaction = #{checking_result}"