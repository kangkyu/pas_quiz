#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
gem 'minitest-reporters'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]
# Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'fizzbuzz'

class FizzbuzzTest < Minitest::Test

# If a number is divisible by 3, print the number, followed by a space, followed by “fizz”. If a number is divisible by 5, print the number, followed by a space, followed by “buzz”. If the number is divisible by both 3 and 5, print the number, followed by a space, followed by “fizzbuzz”.
  def test_result_array
    expected = [[1, ""], [2, ""], [3, "fizz"], [4, ""], [5, "buzz"], [6, "fizz"], [7, ""], [8, ""], [9, "fizz"], [10, "buzz"], [11, ""], [12, "fizz"], [13, ""], [14, ""], [15, "fizzbuzz"], [16, ""], [17, ""], [18, "fizz"], [19, ""], [20, "buzz"], [21, "fizz"], [22, ""], [23, ""], [24, "fizz"], [25, "buzz"], [26, ""], [27, "fizz"], [28, ""], [29, ""], [30, "fizzbuzz"], [31, ""], [32, ""], [33, "fizz"], [34, ""], [35, "buzz"], [36, "fizz"], [37, ""], [38, ""], [39, "fizz"], [40, "buzz"], [41, ""], [42, "fizz"], [43, ""], [44, ""], [45, "fizzbuzz"], [46, ""], [47, ""], [48, "fizz"], [49, ""], [50, "buzz"], [51, "fizz"], [52, ""], [53, ""], [54, "fizz"], [55, "buzz"], [56, ""], [57, "fizz"], [58, ""], [59, ""], [60, "fizzbuzz"], [61, ""], [62, ""], [63, "fizz"], [64, ""], [65, "buzz"], [66, "fizz"], [67, ""], [68, ""], [69, "fizz"], [70, "buzz"], [71, ""], [72, "fizz"], [73, ""], [74, ""], [75, "fizzbuzz"], [76, ""], [77, ""], [78, "fizz"], [79, ""], [80, "buzz"], [81, "fizz"], [82, ""], [83, ""], [84, "fizz"], [85, "buzz"], [86, ""], [87, "fizz"], [88, ""], [89, ""], [90, "fizzbuzz"], [91, ""], [92, ""], [93, "fizz"], [94, ""], [95, "buzz"], [96, "fizz"], [97, ""], [98, ""], [99, "fizz"], [100, "buzz"]]
    assert_equal expected, Fizzbuzz.new(100).result_array
  end

  def test_console_output
    skip "skip - how you do it?"
    expected = "" #
    assert_equal expected, Fizzbuzz.new(100).result_console
  end
end
