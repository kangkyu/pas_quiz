#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
gem 'minitest-reporters'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]
# Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'reverse'

class ReverseTest < Minitest::Test
  def test_mock_reverse
    expected = "gnimmargorp"
    assert_equal expected, Reverse.mock_reverse("programming")
  end
end
