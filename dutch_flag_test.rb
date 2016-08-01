require_relative 'dutch_flag'
require 'test/unit'

class DutchFlagTest < Test::Unit::TestCase
  def setup
    @test_obj = DutchFlag.new
  end

  def test_already_sorted
    result = @test_obj.sort([0, 1])
    assert_equal [0, 1], result
  end

  def test_sorts_one_zero
    result = @test_obj.sort([1, 0])
    assert_equal [0, 1], result
  end
end
