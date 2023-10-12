require 'rspec'
require_relative '../solver'

describe Solver do
  solver = Solver.new

  describe '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a positive integer' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for a negative integer' do
      expect { solver.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'returns the reversed word' do
      expect(solver.reverse('hello')).to eq('olleh')
    end

    it 'returns an empty string as is' do
      expect(solver.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    Solver.new
    it 'returns fizz if N is divisible by 3' do
      expect(solver.fizzbuzz(3)).to eql 'fizz'
    end
    it 'returns buzz if N is divisible by 5' do
      expect(solver.fizzbuzz(5)).to eql 'buzz'
    end

    it 'returns fizzbuzz if N is divisible by 5 and 3' do
      expect(solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'returns string of N if not divisible by 5 and 3' do
      expect(solver.fizzbuzz(7)).to eql '7'
    end
  end
end
