# frozen_string_literal: true

require 'bank_account'

describe Bankaccount do

  let(:account) { Bankaccount.new(statement, transaction_class) }
  let(:transaction_class) { double(:transaction_class, new: transaction) }
  let(:transaction) { double(:transaction) }
  let(:statement) { double(:statement) }

  it 'opens a bank account' do
    expect(account).to be_instance_of Bankaccount
  end

  it 'makes a deposit' do
    account.deposit(10)
    expect(account.balance).to eq 10
  end

  it 'adds a credit transaction to the transaction array' do
      account.deposit(10)
      expect(account.transactions).to include transaction
    end
    it 'raises an error if the amount deposited is a negative number' do
      expect { account.deposit(-10) }.to raise_error(RuntimeError)
    end
    it 'raises an error if the amount withdrew is higher than the amount' do
      account.deposit(10)
      expect { account.withdraw(20) }.to raise_error(RuntimeError)
    end

    it 'raises an error if the amount withdrew is negative' do
      account.deposit(10)
      expect { account.withdraw(-20) }.to raise_error(RuntimeError)
    end

  it 'makes a withdarwal' do
    account.deposit(10)
    account.withdraw(5)
    expect(account.balance).to eq 5
  end
end
