class Reverse
  def self.mock_reverse(input_string)
    output = ""
    input_string.chars do |char|
      output = char + output
    end
    output
  end
end
