Bank Tech Test
-----------------
Week 10 of the Makers Academy bootcamp. This is a practice tech test. Requirements, acceptance criteria, user stories, how to run the code, technologies used and test coverage are detailed below.

## Requirements

- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Acceptance criteria

- **Given** a client makes a deposit of 1000 on 10-01-2023
- **And** a deposit of 2000 on 13-01-2023
- **And** a withdrawal of 500 on 14-01-2023
- **When** she prints her bank statement
- **Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Approach taken

- Break requirements and acceptance criteria into user stories
- Take a test driven development by writing tests first using a red, green, refactor, commit cycle
- Lots of small commits with clear commit messages

## User stories

```
As a user
I want to deposit money in my bank account
So that I can save money in a safe place
```

```
As a user
I want to withdraw money from my bank account
So that I can spend money on things I need
```

```
As a user
I want to withdraw money from my bank account
So that I can spend money on things I need
```

```
As a user
I want to be preventing from withdrawing more money than I have in my bank account
So that I don't get into debt
```

```
As a user
I want to print out transactions for my account
So that I can see the deposits and withdrawals I've made
```

## How to run the code

- Clone this repo locally
- Navigate to this repo locally
- Run `bundle`
- Run `irb`
- Run `require './lib/account'`
- Create an account object by running `my_account = Account.new` in the command line
- Add money to the account by running `my_account.deposit(<amount>)`
- Withdraw money by running `my_account.withdraw(<amount>)`
- View balance by running `my_account.balance`
- Print history of transactions by running `Statement.print_statement(my_account.transaction_history)`

![Screenshot 2022-01-05 at 14 32 24](https://user-images.githubusercontent.com/87817889/148234959-94fd5144-dbc0-4458-b3bc-206d6c2a4e99.png)

## Technologies used

- Ruby for development language
- Git for versioning
- RSpec for testing
- Rubocop for formating testing
- Simplecov and simplecov-console for test coverage

## Test coverage

- 100%
- 71 lines covered by tests with 0 lines missing
