require './lib/statement'

describe Statement do
  # To do - need to work out how to mock account_transaction_history.
end

# describe '#print_statement' do
#   it 'prints out the transaction history for the account' do
#     account.deposit(1000)
#     account.withdraw(500)
#     account.withdraw(100)
#     expect { account.print_statement }.to output.to_stdout
#   end
# end