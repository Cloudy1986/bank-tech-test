class Statement

  def self.print_statement(account_transaction_history)
    header
    account_transaction_history.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{format_number(transaction[:credit])} || #{format_number(transaction[:debit])} || #{format_number(transaction[:balance])}"
    end
  end

  class << self
    private
    def format_number(number)
      '%.2f' % number if number.is_a?(Numeric)
    end

    def header
      puts 'date || credit || debit || balance'
    end
  end
end
