# frozen_string_literal: true

require 'date'
require './lib/statement'

# Account class for making deposits and withdrawals
class Account
  attr_reader :balance, :transaction_history

  def initialize
    @balance = 0.00
    @transaction_history = []
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    @transaction_history << { date: Date.today.strftime('%d/%m/%Y'), credit: deposit_amount, debit: nil, balance: @balance }
  end

  def withdraw(withdraw_amount)
    raise 'Insufficient balance to make this withdrawal' if insufficient_balance?(withdraw_amount)

    @balance -= withdraw_amount
    @transaction_history << { date: Date.today.strftime('%d/%m/%Y'), credit: nil, debit: withdraw_amount, balance: @balance }
  end

  private

  def insufficient_balance?(withdraw_amount)
    withdraw_amount > @balance
  end
end
