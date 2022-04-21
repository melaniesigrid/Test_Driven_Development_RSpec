require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  context "#factorial" do
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

  context 'reverse' do
    reversed = nil
    it 'returns "54321" when argument is "12345"' do
      reversed = @solver.reverse('12345')
      expect(reversed).to eql '54321'
    end

    it 'correctly reverses a sentence' do
      reversed = @solver.reverse('My sentence')
      expect(reversed).to eql 'ecnetnes yM'
    end

    # it "throws an error if there's more than 1 argument" do
    #   expect { @solver.reverse(123) }.to raise_error(ArgumentError)
    # end
  end
end
