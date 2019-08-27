require 'bank'

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
    it 'increases credit' do
      subject.withdraw(500)
      expect(subject.credit).to eq 500
    end
  end

  describe '#deposit' do
    it 'increases balance' do
      subject.deposit(500)
      expect(subject.balance).to eq 500
    end
    it 'increases debit' do
      subject.deposit(500)
      expect(subject.debit).to eq 500
    end
  end


end
