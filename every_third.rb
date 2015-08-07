# 1. Write a function that capitalizes every third alphanumeric character in the following string:

# Larubymeetup.com
# so that your output looks like

# laRubYmeEtuP.coM
# Notice that, when counting every third character, we ignore the period, but we do include the period in the output.

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
