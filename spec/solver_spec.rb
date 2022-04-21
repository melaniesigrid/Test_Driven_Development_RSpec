require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  context "#factorial method" do
    it 'throws an argument error if the input parameter is a negative integer' do
      expect { @solver.factorial(-5) }.to raise_exception ArgumentError
    end

    it 'throws an argument error if the input parameter is a string' do
      expect { @solver.factorial('5') }.to raise_exception ArgumentError
    end

    it 'returns the factorial of a positive integer' do
      factorial = @solver.factorial(5)
      expect(factorial).to eql 120
    end

    it 'returns the factorial of zero' do
      factorial = @solver.factorial(0)
      expect(factorial).to eql 1
    end
  end
end