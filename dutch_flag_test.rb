require_relative 'dutch_flag'
require 'test/unit'

class DutchFlagTest < Test::Unit::TestCase
  def test_already_sorted
    result = DutchFlag.sort([0, 1])
    assert_equal [0, 1], result
  end

  def test_sorts_one_zero
    result = DutchFlag.sort([1, 0])
    assert_equal [0, 1], result
  end

  def test_sorts_two_zero_one
    result = DutchFlag.sort([2, 0, 1])
    assert_equal [0, 1, 2], result
  end

  def test_sorts_two_zero_zero
    result = DutchFlag.sort([0, 2, 0])
    assert_equal [0, 0, 2], result
  end

  def test_sorts_long_zeroes_and_twos
    result = DutchFlag.sort([0, 2, 2, 0, 2, 0, 0, 2, 0])
    assert_equal [0, 0, 0, 0, 0, 2, 2, 2, 2], result
  end

  def test_sorts_with_two_ones
    result = DutchFlag.sort([1, 2, 0, 1])
    assert_equal [0, 1, 1, 2], result
  end

  def test_sorts_a_big_array
    result = DutchFlag.sort([1, 2, 1, 0, 2, 2, 0, 0, 1, 1, 1, 1, 2, 0, 1])
    assert_equal [0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2], result
  end
end
