# return all permutations of these values

# n = nil
# t = true
# f = false

# meaning

# n && t && f
# n || t && f
# n || t || f
# n && t || f

# for all variations and orderings of n, t, f, and ||, &&

# your output should look like this:

# [["nil && true && false", nil], ...]

def all_permutation_output
  [nil, true, false].permutation(3).reduce [] do |result, three_values|
    a, b, c = three_values
    str_array = three_values.map(&:inspect)
    result.push \
      ["%s && %s && %s" % str_array, a && b && c], 
      ["%s || %s && %s" % str_array, a || b && c], 
      ["%s || %s || %s" % str_array, a || b || c], 
      ["%s && %s || %s" % str_array, a && b || c]
  end
end

puts all_permutation_output.inspect
