class Fizzbuzz
  attr_reader :limit
  def initialize(n)
    @limit = n
  end

  # ruby fizzbuzz.rb
  def result_console
    (1..limit).each do |number|
      puts number.to_s + " " + fizzbuzz_for(number)
    end
  end

  def fizzbuzz_for(number)
    fizz_for(number) + buzz_for(number)
  end

  def fizz_for(number)
    number % 3 == 0 ? "fizz" : ""
  end

  def buzz_for(number)
    number % 5 == 0 ? "buzz" : ""
  end

# for testing #

  def result_hash
    result = {}
    (1..limit).each do |number|
      result.merge!({number => fizzbuzz_for(number)})
    end
    result
  end

  def result_array
    result = []
    (1..limit).each do |number|
      result << [number, fizzbuzz_for(number)]
    end
    result
  end

  # def result_console_from_hash
  #   result_hash.each do |k, v|
  #     puts "#{k} #{v}"
  #   end
  # end

  # def result_console_from_array
  #   result_array.each do |a, b|
  #     puts "#{a} #{b}"
  #   end
  # end
end

Fizzbuzz.new(100).result_console
# Fizzbuzz.new(100).result_console_from_hash
# Fizzbuzz.new(100).result_console_from_array
