# write a method called "transpose" that takes this array of arrays:

a =
[
['first', 'second'],
['third', 'fourth']
]

# and transposes it into this array of arrays

# [
# ['first', 'third'],
# ['second', 'fourth']
# ]

# you can think of it as rows become columns
# I know there is an Array method called "transpose" but
# I am asking you to write your own

def transpose(before)
  after = [[],[]]

  before.each_with_index do |n1, i|
    n1.each_with_index do |n2, j|
      after[i][j] = before[j][i]
    end
  end

  after
end

puts transpose(a).inspect
