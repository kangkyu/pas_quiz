#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
gem 'minitest-reporters'
require 'minitest/autorun'

require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]

require_relative 'shared_ancestor'

# write a function called shared_ancestor that finds the youngest shared ancestor
# class of two objects

# So -- 
# shared_ancestor(1, 1.0)
# will return 
# Numeric

# You get an object's class by calling
# object.class
# you get a class's parent class, by calling
# class.superclass

class SharedAncestorTest < Minitest::Test
  def test_shared_ancestor
    assert_equal Numeric, SharedAncestor.new(1, 1.0).shared_ancestor
  end

  def test_extra_output
    expected = "The shared ancestor of 1 and 1.0 is Numeric, which is 1's grandparent, and 1.0's parent"
    assert_equal expected, SharedAncestor.new(1, 1.0).extra_output
  end
end

# extra credit
# make the output say
# "The shared ancestor of obj1 and obj2 is Numeric, which is obj1's parent, and obj2's grandparent"
