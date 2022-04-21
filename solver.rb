class Solver
  def factorial(num)
    raise ArgumentError unless num.is_a?(Integer) && num >= 0
    return 1 if num == 0
    return num * factorial(num - 1)
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    if num % 3 == 0 && num % 5 == 0
      "fizzbuzz"
    elsif num % 3 == 0
      "fizz"
    elsif num % 5 == 0
      "buzz"
    else
      num.to_s
    end
  end
end
