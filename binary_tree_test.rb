require_relative 'binary_tree'
require 'test/unit'

class BinaryTreeTest < Test::Unit::TestCase
  def test_inorder_prints_root
    root = BinaryTreeNode.new('A')
    output = root.in_order
    assert_equal 'A', output
  end
end
