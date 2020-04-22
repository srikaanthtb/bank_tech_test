# bank_tech_test

A simple program that allows you make a bank account, deposit and take out money and see a summary of your transactions


### Using the Application

#### Clone the repo and launch:

```
$ git clone https://github.com/srikaanthtb/bank_tech_test
$ cd bank_tech_test
$ bundle
$ irb
> require './lib/account.rb'
```
#### Running Rspec on the app
```
$ cd bank_tech_test
$ bundle
rspec
Finished in 0.00872 seconds (files took 0.17066 seconds to load)
8 examples, 0 failures

```
#### How to use the App:

```
# create a new account
> account = Account.new

# deposit money in the account
> account.deposit(10)

# withdraw money from the account
> account.withdraw(5)

# print a summary
> account.summary

date || credit || debit || balance
22/04/2020 ||  || 5.00 || 5.00
22/04/2020 || 10.00 ||  || 10.00
```
#### My approach
Create user stories based on the acceptance criteria
write a test that would cover the user story
write the minimum code needed to pass the test
Refactor the code
