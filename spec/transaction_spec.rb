require 'transaction'

describe Transaction do
  describe '#debit' do
    it 'debit is amount of cash' do
      subject.debit(50)
      expect(subject.debit_amount).to eq 50
    end
  end

  describe '#credit' do
    it 'credit is amount of cash' do
      subject.credit(50)
      expect(subject.credit_amount).to eq 50
    end
  end

  describe '#transaction_date' do
    it 'gives the date of the transaction' do
      Timecop.travel(2012, 1, 13, 13, 0, 0) do
        expect(subject.transaction_date).to eq '13/01/2012'
      end
    end
  end
end
