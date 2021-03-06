# frozen_string_literal: true

# Statement class for printing a statement
class Statement
  def self.print_statement(account_transaction_history)
    output_header
    account_transaction_history.reverse.each do |transaction|
      puts "#{format_date(transaction[:date])} || #{format_number(transaction[:credit])} || #{format_number(transaction[:debit])} || #{format_number(transaction[:balance])}"
    end
  end

  class << self
    private

    def format_number(number)
      '%.2f' % number if number.is_a?(Numeric)
    end

    def format_date(date)
      date.strftime('%d/%m/%Y')
    end

    def output_header
      puts 'date || credit || debit || balance'
    end
  end
end
