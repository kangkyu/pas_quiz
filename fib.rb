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