class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail "Insufficient balance to make this withdrawal" if insufficient_balance?(amount)
    @balance -= amount
  end
end

private

def insufficient_balance?(amount)
  amount > @balance
end
