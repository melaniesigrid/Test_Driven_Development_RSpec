require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  context '#factorial' do
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
  end

  context '#fizzbuzz' do
    fizzbuzzed = nil

    it 'takes an integer and returns a string' do
      fizzbuzzed = @solver.fizzbuzz(7)
      expect(fizzbuzzed).to be_a String
    end

    it 'returns fizzbuzz if number is divisible by 3 and 5' do
      fizzbuzzed = @solver.fizzbuzz(30)
      expect(fizzbuzzed).to eql 'fizzbuzz'
    end

    it 'returns fizz when the number is divisible only by 3' do
      fizzbuzzed = @solver.fizzbuzz(9)
      expect(fizzbuzzed).to eql 'fizz'
    end

    it 'returns buzz when the number is divisible only by 5' do
      fizzbuzzed = @solver.fizzbuzz(10)
      expect(fizzbuzzed).to eql 'buzz'
    end
  end
end
