#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
gem 'minitest-reporters'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]
# Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'every_third'
# every_third.rb

# 1. Write a function that capitalizes every third alphanumeric character in the following string:

# Larubymeetup.com
# so that your output looks like

# laRubYmeEtuP.coM
# Notice that, when counting every third character, we ignore the period, but we do include the period in the output.

class EveryThirdTest < Minitest::Test
  def test_results
    expected = "laRubYmeEtuP.coM"
    assert_equal expected, EveryThird.result("Larubymeetup.com")
  end
end
