class Bank

  def initialize
    @balance = 0
  end

  def deposit(cash)
    @balance += cash
    @debit = cash
  end

  def withdraw(cash)
    @balance-= cash
    @credit = cash
  end

  def debit
    @debit
  end

  def credit
    @credit
  end

  def balance
    @balance
  end

end
