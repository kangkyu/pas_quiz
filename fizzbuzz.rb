class Fizzbuzz
  attr_reader :limit
  def initialize(n)
    @limit = n
  end

  def result_array
    result = []
    (1..limit).each do |number|
      fizzbuzz = ""
      fizzbuzz += "fizz" if number % 3 == 0
      fizzbuzz += "buzz" if number % 5 == 0
      result << [number, fizzbuzz]
    end
    result
  end

  def result_console
    (1..limit).each do |number|
      puts "#{number} #{"fizz" if number % 3 == 0}#{"buzz" if number % 5 == 0}"
    end
  end
end

Fizzbuzz.new(100).result_console
