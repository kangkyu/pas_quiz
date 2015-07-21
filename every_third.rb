class EveryThird
  def self.result(input_string)
    input_array = input_string.chars.to_a
    output_array = []
    index = 1
    input_array.each do |e|
      if e == '.'
        output_array << e.upcase
      elsif (index) % 3 == 0
        output_array << e.upcase
        index += 1
      else
        output_array << e.downcase
        index += 1
      end
    end
    output_array.join
  end
end
