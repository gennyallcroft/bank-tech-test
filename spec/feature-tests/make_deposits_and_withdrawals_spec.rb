require 'bank'
require 'bank_statement'

describe '#printing bank statement for deposits and withdrawals' do
  bank = Bank.new
  it 'prints bank statement' do
    Timecop.travel(2012, 1, 10, 13, 0, 0) do
      bank.deposit(1000)
    end
    Timecop.travel(2012, 1, 13, 13, 0, 0) do
      bank.deposit(2000)
    end
    Timecop.travel(2012, 1, 14, 13, 0, 0) do
      bank.withdraw(500)
    end
    expect(bank.print_bank_statement(bank_statement = BankStatement.new)).to eq "date || credit || debit || balance \n 14/01/2012 || || 500.00 || 2500.00 \n 13/01/2012 || 2000.00 || || 3000.00 \n 10/01/2012 || 1000.00 || || 1000.00"
  end
end
