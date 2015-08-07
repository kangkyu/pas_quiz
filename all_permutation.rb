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
    v1, v2, v3 = three_values
    s1, s2, s3 = three_values.map(&:inspect)
    result.push \
      ["#{s1} && #{s2} && #{s3}", v1 && v2 && v3], 
      ["#{s1} || #{s2} && #{s3}", v1 || v2 && v3], 
      ["#{s1} || #{s2} || #{s3}", v1 || v2 || v3], 
      ["#{s1} && #{s2} || #{s3}", v1 && v2 || v3]
  end
end

puts all_permutation_output.inspect
