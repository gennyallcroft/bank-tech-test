class Transaction

  def debit(cash)
    @debit = cash
  end

  def credit(cash)
    @credit = cash
  end

  def transaction_date
    Time.now
  end

end
