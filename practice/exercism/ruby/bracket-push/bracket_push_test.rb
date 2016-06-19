#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'bracket_push'

# Test data version:
# 4626617 Merge pull request #237 from moofkit/bracket_push_tests

class BracketsTest < Minitest::Test
  def test_paired_square_brackets
    assert Brackets.paired?('[]')
  end

  def test_empty_string
    assert Brackets.paired?('')
  end

  def test_unpaired_brackets
    refute Brackets.paired?('[[')
  end

  def test_wrong_ordered_brackets
    refute Brackets.paired?('}{')
  end

  def test_paired_with_whitespace
    assert Brackets.paired?('{ }')
  end

  def test_simple_nested_brackets
    assert Brackets.paired?('{[]}')
  end

  def test_several_paired_brackets
    assert Brackets.paired?('{}[]')
  end

  def test_paired_and_nested_brackets
    assert Brackets.paired?('([{}({}[])])')
  end

  def test_unpaired_and_nested_brackets
    refute Brackets.paired?('([{])')
  end

  def test_paired_and_wrong_nested_brackets
    refute Brackets.paired?('[({]})')
  end

  def test_math_expression
    assert Brackets.paired?('(((185 + 223.85) * 15) - 543)/2')
  end

  def test_complex_latex_expression
    str = '\left(\begin{array}{cc} \frac{1}{3} & x\\ '\
          '\mathrm{e}^{x} &... x^2 \end{array}\right)'
    assert Brackets.paired?(str)
  end

  # Problems in exercism evolve over time,
  # as we find better ways to ask questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of Brackets.
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html
  def test_bookkeeping
    assert_equal 1, Brackets::VERSION
  end
end
