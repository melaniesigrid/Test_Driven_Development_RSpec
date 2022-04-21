class Solver
  def factorial(num)
    raise ArgumentError unless num.is_a?(Integer) && num >= 0
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(string)
    raise ArgumentError unless string.is_a? String

    string.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
