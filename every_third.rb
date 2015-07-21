class EveryThird
  def self.result(input_string)
    input_array = input_string.chars.to_a
    output_array = []
    1.upto(input_array.length) do |index|
      if (index) % 3 == 0
        output_array.push input_array.shift.upcase
      else
        output_array.push input_array.shift.downcase
      end
    end
    output_array.join
  end
end
