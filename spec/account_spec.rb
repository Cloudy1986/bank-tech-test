require './lib/account'

describe Account do
  let(:account) { Account.new }
  it 'has a balance of zero when initialised' do
    expect(account.balance).to eq(0)
  end

  describe '#deposit' do
    it 'adds the deposit to the balance of the account' do
      expect { account.deposit(1000) }.to change { account.balance }.by(1000)
    end
  end
end
