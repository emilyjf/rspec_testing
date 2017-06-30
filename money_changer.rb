require 'rspec'

class ChangeMachine
  def change(cents)
    denominations = [25, 10, 5, 1]
    coins = []
      denominations.each do |denomination|
        until cents < denomination
          coins << denomination
          cents -= denomination
        end
      end
    coins
  end
end

RSpec.describe ChangeMachine do 
  describe '#change' do
    let(:machine) { ChangeMachine.new }
    it 'should return [1] when given 1' do
      expect(machine.change(1)).to eq([1])
    end

    it 'should return [1, 1, 1] when given 3' do
      expect(machine.change(3)).to eq([1, 1, 1])
    end

    it 'should return [1, 1, 1, 1] when given 4' do
      expect(machine.change(4)).to eq([1, 1, 1, 1])
    end

    it 'should return [1, 1, 1, 1, 1] when given 5' do
      expect(machine.change(5)).to eq([1, 1, 1, 1, 1])
    end

    it 'should return [5, 1] when given 6' do
      expect(machine.change(6)).to eq([5, 1])
    end

    it 'should return [5, 1, 1] when given 7' do
      expect(machine.change(6)).to eq([5, 1, 1])
    end

    it 'should return [5, 1, 1, 1] when given 8' do
      expect(machine.change(8)).to eq([5, 1, 1, 1])
    end

    it 'should return [5, 1, 1, 1, 1] when given 9' do
      expect(machine.change(9)).to eq([5, 1, 1, 1, 1])
    end 

    it 'should return [10] when given 10' do
      expect(machine.change(10)).to eq([10])
    end  

    it 'should return [10, 1] when given 11' do
      expect(machine.change(11)).to eq([10, 1])
    end

    it 'should return [10, 1, 1] when given 12' do
      expect(machine.change(12)).to eq([10, 1, 1])
    end     

    it 'should return [10, 5, 1, 1] when given 17' do
      expect(machine.change(17)).to eq([10, 5, 1, 1])
    end  

    it 'should return [10, 10] when given 20' do
      expect(machine.change(20)).to eq([10, 10])
    end  

    it 'should return [10, 10, 1, 1] when given 22' do
      expect(machine.change(22).to eq[10, 10, 1, 1])
    end

    it 'should return [25] when given 25' do
      expect(machine.change(25).to eq[25])
    end

    it 'should return [25, 25] when given 50' do
      expect(machine.change(50).to eq[50])
    end

    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] when given 119' do
      expect(machine.change(119).to eq[119])
    end

    it 'should return [25, 25, 25, 10, 1, 1] when given 87' do
      expect(machine.change(87).to eq[87])
    end



  end
end



