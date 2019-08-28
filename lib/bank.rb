class Bank

  attr_reader :credit, :debit, :withdrawal_date, :deposit_date, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def balance
    @balance
  end

  def withdraw(cash, transaction = Transaction.new)
    @balance -= cash
    @credit = ""
    @debit = '%.2f' % transaction.debit(cash) + " "
    @transaction_date = transaction.transaction_date.strftime("%d/%m/%Y")
    add_transaction
  end

  def deposit(cash, transaction = Transaction.new)
    @balance += cash
    @debit = ""
    @credit = '%.2f' % transaction.credit(cash) + " "
    @transaction_date = transaction.transaction_date.strftime("%d/%m/%Y")
    add_transaction
  end

  def add_transaction
    @transactions << { date: @transaction_date, credit: @credit, debit: @debit, balance: @balance }
  end

  def print_bank_statement(bank_statement = BankStatement.new)
    return bank_statement.print_column_headings + bank_statement.print_transactions(@transactions)
  end

end
