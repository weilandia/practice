gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class BlockTest < Minitest::Homework
  be_gentle!
# Proc objects are blocks of code that have been bound to a set of local variables. Once bound, the code may be called in different contexts and still access those variables.
# Calling Proc.new is not recommended because of the way it handles RETURN calls. RETURN in Proc.new exits both the block and the method.  Using lambda{} vs. Proc.new{} is reocommended.  See: https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/18-blocks/lessons/64-blocks-procs-lambdas
  def test_default_return_value
    assert_equal nil, Proc.new {}.call
    assert_equal nil, Proc.new { |arg| }.call(1)
    assert_equal 1, Proc.new { 1 }.call
    assert_equal :abc, Proc.new { |arg| :abc }.call(1)
    assert_equal 1, Proc.new { |arg| arg }.call(1)
  end

  def test_environment_visibility
    vall = 1
    assert_equal 1, Proc.new { vall }.call
    assert_equal 2, lambda { |val| val }.call(2)
  end

  def test_modifying_environment
    val = 1
    lambda { val = 2 }.call
    assert_equal 2, val
  end

  def test_passing_arguments
    assert_equal 2, Proc.new { |n| n + 1 }.call(1)
    assert_equal 13, Proc.new { |n1, n2| n1 + n2 }.call(10, 3)
    assert_equal 13, Proc.new { |n1, n2| n1 + n2 }.call([10, 3])
  end
#each returns the original object it was called on because it's really used for its side effects and not what it returns
#each_with_index passes not just the current item but whatever position in the array it was located in.
#select returns a new object (e.g. array) filled with only those original items where the block you gave it returned true
#map returns a new array filled with whatever gets returned by the block each time it runs.
# The & is yielding to the blcok it's attached to.  &loud yields to loud.
  def test_passing_blocks_as_arguments_1
    loud = Proc.new { |string| string.upcase }
    assert_equal ["A","B","C"], ["a", "b", "c"].map { |string| string.upcase }
    assert_equal ["A","B","C"], ["a", "b", "c"].map(&loud)
  end
# ???
  def test_passing_and_receiving_blocks_as_arguments
    invoker1 = Proc.new { |proc| proc.call }
    invoker2 = Proc.new { |&proc| proc.call }
    return_a = Proc.new { 'a' }
    assert_equal "a", invoker1.call(return_a)
    assert_equal "a", invoker2.call(&return_a)
  end
end
