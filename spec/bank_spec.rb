require 'bank'

describe Bank do

  describe '#balance' do
    it 'has default balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  
end
