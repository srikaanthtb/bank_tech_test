# frozen_string_literal: true
require_relative './transaction'
require_relative './bank_statement'
class Bankaccount
  attr_reader :transactions, :balance

   def initialize(statement = Bankstatement.new, transaction = Transaction)
     @transactions = []
     @balance = 0
     @statement = statement
     @transaction = transaction
   end

   def deposit(amount)
     raise "You cannot deposit a negative amount" if amount < 0
     increase_balance(amount)
     credit = create_credit(amount)
     save(credit)
   end

   def withdraw(amount)
     raise "You cannot withdraw a negative amount" unless amount.positive?
     raise "You do not have sufficent funds" if @balance < amount
     decrease_balance(amount)
     debit = create_debit(amount)
     save(debit)
   end

   def summary
     @statement.print(@transactions)
   end

   private

   def create_credit(amount)
     @transaction.new(0, amount, @balance)
   end

   def create_debit(amount)
     @transaction.new(amount, 0, @balance)
   end

   def save(transaction)
     @transactions << transaction
   end

   def increase_balance(amount)
     @balance += amount
   end

   def decrease_balance(amount)
     @balance -= amount
   end


end
