class Transaction

  def initialize(bank = Bank.new)
    @bank = bank
  end

  def deposit(cash)
    @debit = cash
  end

  def withdraw(cash)
    @credit = cash
  end

  def debit
    @debit
  end

  def credit
    @credit
  end

end
