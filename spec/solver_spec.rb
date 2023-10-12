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
end
