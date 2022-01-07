# frozen_string_literal: true

require './lib/account'

describe Account do
  let(:account) { Account.new }
  it 'has a balance of zero when initialised' do
    expect(account.balance).to eq(0)
  end

  it 'has an empty transaction history when initialised' do
    expect(account.transaction_history).to be_empty
  end

  describe '#deposit' do
    it 'adds the deposit to the balance of the account' do
      expect { account.deposit(1000) }.to change { account.balance }.by(1000)
      expect(account.balance).to eq(1000)
    end

    it 'adds the details of the deposit to the transaction_history array' do
      account.deposit(1000)
      account.deposit(500)
      expect(account.transaction_history).to include({ date: Date.today, credit: 1000, debit: nil, balance: 1000 })
      expect(account.transaction_history).to include({ date: Date.today, credit: 500, debit: nil, balance: 1500 })
    end
  end

  describe '#withdraw' do
    it 'subtracts the withdrawal from the balance of the account' do
      account.deposit(1000)
      expect { account.withdraw(500) }.to change { account.balance }.by(-500)
      expect(account.balance).to eq(500)
    end

    it 'raises an error when the withdrawal amount is greater than the balance of the account' do
      expect { account.withdraw(500) }.to raise_error 'Insufficient balance to make this withdrawal'
    end

    it 'adds the details of the withdrawal to the transaction_history array' do
      account.deposit(1000)
      account.withdraw(500)
      account.withdraw(100)
      expect(account.transaction_history).to include({ date: Date.today, credit: nil, debit: 500, balance: 500 })
      expect(account.transaction_history).to include({ date: Date.today, credit: nil, debit: 100, balance: 400 })
    end
  end
end
