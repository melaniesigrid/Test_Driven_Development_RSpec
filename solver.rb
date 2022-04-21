class Solver
  def factorial(num)
    raise ArgumentError unless num.is_a?(Integer) && num >= 0
    return 1 if num == 0
    return num * factorial(num - 1)
  end
end