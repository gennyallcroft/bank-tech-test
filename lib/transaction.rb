class Transaction
  attr_reader :debit_amount, :credit_amount

  def debit(cash)
    @debit_amount = cash
  end

  def credit(cash)
    @credit_amount = cash
  end

  def transaction_date
    Time.now.strftime('%d/%m/%Y')
  end
end
