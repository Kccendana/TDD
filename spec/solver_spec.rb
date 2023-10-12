require 'rspec'
require_relative '../solver'

describe Solver do
  solver = Solver.new

  context '#factorial' do
    it 'returns the factorial of the number' do
      expect(solver.factorial(5)).to eql(120)
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
    solve = Solver.new
    it 'returns fizz if N is divisible by 3' do
      expect(solve.fizzbuzz(3)).to eql 'fizz'
    end
    it 'returns buzz if N is divisible by 5' do
      expect(solve.fizzbuzz(5)).to eql 'buzz'
    end

    it 'returns fizzbuzz if N is divisible by 5 and 3' do
      expect(solve.fizzbuzz(15)).to eql 'fizzbuzz'
    end

    it 'returns string of N if not divisible by 5 and 3' do
      expect(solve.fizzbuzz(7)).to eql '7'
    end
  end
end
