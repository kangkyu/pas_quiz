
# Take this array:

a = [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]

# and transform it into this array

# [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 0, 0]]

flat = a.flatten

b = []
while flat.length > 0
  temp = flat.shift(3)
  while temp.length < 3
    temp << 0
  end
  b << temp
end
b
