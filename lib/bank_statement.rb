class BankStatement
  def print_column_headings
    "date || credit || debit || balance \n"
  end

  def print_transactions(transactions)
    transaction_details = []
    transactions.reverse.each do |transaction|
      transaction_details << " #{transaction[:date]} || #{transaction[:credit]}|| #{transaction[:debit]}|| #{'%.2f' % transaction[:balance]}"
    end
    transaction_details.join(" \n")
  end
end
