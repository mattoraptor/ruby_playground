require_relative 'dutch_flag'
require 'test/unit'

class DutchFlagTest < Test::Unit::TestCase
  def test_already_sorted
    result = DutchFlag.new([0, 1]).sort
    assert_equal [0, 1], result
  end

  def test_sorts_one_zero
    result = DutchFlag.new([1, 0]).sort
    assert_equal [0, 1], result
  end

  def test_sorts_two_zero_one
    result = DutchFlag.new([2, 0, 1]).sort
    assert_equal [0, 1, 2], result
  end

  def test_sorts_two_zero_zero
    result = DutchFlag.new([0, 2, 0]).sort
    assert_equal [0, 0, 2], result
  end
end
