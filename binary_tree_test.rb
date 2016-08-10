require_relative 'binary_tree'
require 'test/unit'

class BinaryTreeTest < Test::Unit::TestCase
  def test_inorder_prints_root
    root = BinaryTreeNode.new('A')
    output = root.in_order
    assert_equal 'A', output
  end

  def test_inorder_prints_three_node
    root = BinaryTreeNode.new('A')
    root.left = BinaryTreeNode.new('B')
    root.right = BinaryTreeNode.new('C')
    output = root.in_order
    assert_equal 'BAC', output
  end
end
