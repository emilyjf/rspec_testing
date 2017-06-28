require 'rspec'

class ChangeMachine
  
  def change(num)
    return num / 25
      if num % 25 > 9
        (num % 25) / 10 
      elsif
        num % 10 > 4
          (num % 10) / 5
      else
        num % 5 > 0
          (num % 1) / 1  
      end
    end
  end
end

RSpec.describe ChangeMachine do 
  describe '#change' do
    it 'should return [119] when given 119' do
      machine = ChangeMachine.new
      expect(changemachine.change(119)).to eq([119])
    end
  end
end



