# 2. The Fibonacci sequence is a sequence of integers that begins with 0, 1. Each subsequent integer is calculated by adding the two integers to the left of it. So the next number in the sequence is 1, because 0 + 1 == 1. The number after that is 2, because 1 + 1 == 2. So, the first several entries in the Fibonacci Sequence are:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 …

# Write a function that calculates the first 100 numbers in the Fibonacci sequence

class Fib
  def initialize(n)
    @fib_count = n
  end

  def fib_count
    @fib_count
  end

  def result
    fibs = [0,1]
    while fibs.length < fib_count
      fibs.push fibs[-1] + fibs[-2]
    end
    fibs
  end
end