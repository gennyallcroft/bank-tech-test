class Bank

  attr_reader :credit, :debit, :withdrawal_date, :deposit_date

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def withdraw(cash, transaction = Transaction.new)
    @balance -= cash
    @credit = transaction.credit(cash)
    @withdrawal_date = transaction.transaction_date
  end

  def deposit(cash, transaction = Transaction.new)
    @balance += cash
    @debit = transaction.debit(cash)
    @deposit_date = transaction.transaction_date
  end

end
