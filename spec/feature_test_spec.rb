# frozen_string_literal: true

require './lib/account'

describe 'Bank Account program' do
  before(:each) do
    allow(Date).to receive(:today).and_return Date.new(2022,1,5)
  end

  it 'creates an account, makes some deposits, makes some withdrawals and prints a statement' do
    my_account = Account.new
    my_account.deposit(1000)
    my_account.deposit(2000)
    my_account.withdraw(100)
    my_account.withdraw(1500)
    expect { Statement.print_statement(my_account.transaction_history) }.to output("date || credit || debit || balance\n" +
      "05/01/2022 ||  || 1500.00 || 1400.00\n" + "05/01/2022 ||  || 100.00 || 2900.00\n" +
      "05/01/2022 || 2000.00 ||  || 3000.00\n" + "05/01/2022 || 1000.00 ||  || 1000.00\n").to_stdout
  end
end
