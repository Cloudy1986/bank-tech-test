class Statement

  def self.print_statement(account_transaction_history)
    puts 'date || credit || debit || balance'
    account_transaction_history.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end
