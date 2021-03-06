# frozen_string_literal: true

require './lib/statement'

describe Statement do
  before(:each) do
    allow(Date).to receive(:today).and_return Date.new(2022,1,5)
  end

  it 'prints out the transaction history for the account' do
    account_transaction_history = [
      { date: Date.today, credit: 500, debit: nil, balance: 500 },
      { date: Date.today, credit: nil, debit: 100, balance: 400 }
    ]
    expect { Statement.print_statement(account_transaction_history) }.to output("date || credit || debit || balance\n" + "05/01/2022 ||  || 100.00 || 400.00\n" +
      "05/01/2022 || 500.00 ||  || 500.00\n").to_stdout
  end
end
