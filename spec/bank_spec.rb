require 'bank'
require 'BankStatement'

describe Bank do

  describe '#balance' do
    it 'has default balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#withdraw' do
    it 'decreases balance' do
      subject.withdraw(500)
      expect(subject.balance).to eq -500
    end
    it 'increases debit' do
      subject.withdraw(500)
      expect(subject.debit).to eq "500.00 "
    end
  end

  describe '#deposit' do
    it 'increases balance' do
      subject.deposit(500)
      expect(subject.balance).to eq 500
    end
    it 'increases credit' do
      subject.deposit(500)
      expect(subject.credit).to eq "500.00 "
    end
  end

  describe '#bank_statement' do
    it 'prints bank statement' do
      Timecop.travel(2012, 1, 10, 13, 0, 0) do
          subject.deposit(1000)
      end
      Timecop.travel(2012, 1, 13, 13, 0, 0) do
          subject.deposit(2000)
      end
      Timecop.travel(2012, 1, 14, 13, 0, 0) do
          subject.withdraw(500)
      end
      expect(subject.print_bank_statement(bank_statement = BankStatement.new)).to eq "date || credit || debit || balance \n 14/01/2012 || || 500.00 || 2500.00 \n 13/01/2012 || 2000.00 || || 3000.00 \n 10/01/2012 || 1000.00 || || 1000.00"
    end
  end


end
