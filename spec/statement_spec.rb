require './lib/statement'

describe Statement do
  # To do - need to work out how to mock account_transaction_history.

  #Temp test - failing on dates. Need to refactor
  it 'prints out the transaction history for the account' do
    account_transaction_history = [
      {:date=>2022-01-05, :credit=>500, :debit=>nil, :balance=>500},
      {:date=>2022-01-05, :credit=>nil, :debit=>100, :balance=>400}
    ]
    p account_transaction_history
    expect { Statement.print_statement(account_transaction_history) }.to output("date || credit || debit || balance\n" + "05/01/2022 || || 100.00 || 400.00\n" +
      "05/01/2022 || 500.00 || || 500.00\n").to_stdout
  end
end
