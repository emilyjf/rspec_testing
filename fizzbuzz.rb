require 'rspec'

class Fizzbuzz
  def output(number)
    return "FizzBuzz" if number % 15 == 0
    return "Buzz" if number % 5 == 0
    return "Fizz" if number % 3 == 0
    number
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.go

RSpec.describe Fizzbuzz do
  let(:fizzbuzz) {Fizzbuzz.new}

  describe '#output' do
    it 'should return 1 if given 1' do
      expect(fizzbuzz.output(1)).to eq(1)
    end
  
  describe '#output' do
    it 'should return 2 if given 2' do
      expect(fizzbuzz.output(2)).to eq(2)
    end

  describe '#output' do
    it 'should return fizz if given 3' do
      expect(fizzbuzz.output(3)).to eq("Fizz")
    end

  describe '#output' do
    it 'should return 4 if given 4' do
      expect(fizzbuzz.output(4)).to eq(4)
    end

    describe '#output' do
    it 'should return buzz if given 5' do
      expect(fizzbuzz.output(5)).to eq("Fizz")
    end

    describe '#output' do
    it 'should fizz if given 6' do
      expect(fizzbuzz.output(6)).to eq("Fizz")
    end

    describe '#output' do
    it 'should return "FizzBuzz" if given 15' do
      expect(fizzbuzz.output(15)).to eq("FizzBuzz")
    end

    describe '#output' do
    it 'should return "73 if given 73' do
      expect(fizzbuzz.output(73)).to eq(73)
    end

    describe '#output' do
    it 'should return "FizzBuzz" if given 15' do
      expect(fizzbuzz.output(15)).to eq("FizzBuzz")
    end

    describe '#output' do
    it 'should return 55 if given 55' do
      expect(fizzbuzz.output(15)).to eq("FizzBuzz")
    end
  end
end
 