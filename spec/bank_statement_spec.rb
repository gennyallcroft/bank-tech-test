require 'bank_statement'

describe BankStatement do
  describe '#print_column_headings' do
    it 'prints the column headings of the bank statement' do
      expect(subject.print_column_headings).to eq "date || credit || debit || balance \n"
    end
  end

  describe '#print_transactions' do
    it 'prints the bank transactions' do
      expect(subject.print_transactions([{ date: '23/06/2019', credit: '1000.00 ', debit: '', balance: 1000.00 }])).to eq ' 23/06/2019 || 1000.00 || || 1000.00'
    end
  end
end
