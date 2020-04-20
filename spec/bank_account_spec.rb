# frozen_string_literal: true

require 'bank_account'

describe Bankaccount do
  account = Bankaccount.new
  it 'opens a bank account' do
    expect(account).to be_instance_of Bankaccount
  end

  it 'makes a deposit' do
    account.deposit(10)
    expect(account.balance).to eq 10
  end

  it 'makes a withdarwal' do
    account.withdraw(5)
    expect(account.balance).to eq 5
  end
end
