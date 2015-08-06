class Reverse
  def self.mock_reverse(input_string)
    input_string.chars.reduce "" do |output, char|
      char + output
    end
  end
end
