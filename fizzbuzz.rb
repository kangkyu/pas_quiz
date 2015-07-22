class Fizzbuzz
  attr_reader :limit
  def initialize(n)
    @limit = n
  end

  # for testing
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

  # ruby fizzbuzz.rb
  def result_console
    (1..limit).each do |number|
      puts number.to_s +
        " " +
        fizz_for(number) +
        buzz_for(number)
    end
  end

  def fizz_for(number)
    number % 3 == 0 ? "fizz" : ""
  end

  def buzz_for(number)
    number % 5 == 0 ? "buzz" : ""
  end
end

Fizzbuzz.new(100).result_console
