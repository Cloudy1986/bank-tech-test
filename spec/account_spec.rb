require './lib/account'

describe Account do

  let(:account) { Account.new }
  
  it 'has a balance of zero when initialised' do
    expect(account.balance).to eq(0)
  end

end