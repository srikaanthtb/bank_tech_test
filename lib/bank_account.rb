# frozen_string_literal: true

class Bankaccount
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  attr_reader :balance
end
