require 'rspec'
require_relative '../solver'

describe Solver do
  solver = Solver.new

  context '#factorial' do
    it 'returns the factorial of the number' do
      expect(solver.factorial(5)).to eql(120)
    end
  end
end
