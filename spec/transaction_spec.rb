require 'transaction'

describe Transaction do
  let(:bank) { double :bank }

  describe '#deposit' do
    it 'is a debit' do
      transaction = Transaction.new(bank)
      transaction.deposit(1000)
      expect(transaction.debit).to eq 1000
    end
  end

  describe '#withdrawal' do
    it 'is a credit' do
      transaction = Transaction.new(bank)
      transaction.withdraw(500)
      expect(transaction.credit).to eq 500
    end
  end

end
