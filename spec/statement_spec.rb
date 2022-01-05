require './lib/statement'

describe Statement do
  # To do - need to work out how to mock account_transaction_history.

  #Temp test - failing on dates. Need to refactor
  it 'prints out the transaction history for the account' do
    account_transaction_history = [
      {:date=>2022-01-05, :credit=>500, :debit=>nil, :balance=>500},
      {:date=>2022-01-05, :credit=>nil, :debit=>100, :balance=>400}
    ]
    expect { Statement.print_statement(account_transaction_history) }.to output("date || credit || debit || balance\n" + "2022-01-05 || || 100 || 400\n" +
      "2022-01-05 || 500 || || 500\n").to_stdout
  end
end
