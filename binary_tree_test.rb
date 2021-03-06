require_relative 'binary_tree'
require 'test/unit'

class BinaryTreeTest < Test::Unit::TestCase
  def setup
    @one_node = BinaryTreeNode.new('A')
    @three_node = build_three_node
    @big_full = build_big_full_tree
    @v_shape = build_v_shape
    @lopsided = build_lopsided
  end

  def test_inorder_prints_root
    output = @one_node.in_order
    assert_equal 'A', output
  end

  def test_inorder_prints_three_node
    output = @three_node.in_order
    assert_equal 'BAC', output
  end

  def test_pre_order_three_node
    output = @three_node.pre_order
    assert_equal 'ABC', output
  end

  def test_inorder_prints_v
    output = @v_shape.in_order
    assert_equal 'DBACE', output
  end

  def test_inorder_is_correct_for_three_level_full
    output = @big_full.in_order
    assert_equal 'DBEAFCG', output
  end

  def test_pre_order_big_full
    output = @big_full.pre_order
    assert_equal 'ABDECFG', output
  end

  def test_inorder_lopsided
    output = @lopsided.in_order
    assert_equal 'DBFEAC', output
  end

  def test_pre_order_lopsided
    output = @lopsided.pre_order
    assert_equal 'ABDEFC', output
  end

  def build_v_shape
    root = BinaryTreeNode.new('A')
    b = BinaryTreeNode.new('B')
    c = BinaryTreeNode.new('C')
    root.left = b
    root.right = c
    b.left = BinaryTreeNode.new('D')
    c.right = BinaryTreeNode.new('E')
    root
  end

  def build_big_full_tree
    root = BinaryTreeNode.new('A')
    b = BinaryTreeNode.new('B')
    c = BinaryTreeNode.new('C')
    d = BinaryTreeNode.new('D')
    e = BinaryTreeNode.new('E')
    f = BinaryTreeNode.new('F')
    g = BinaryTreeNode.new('G')
    root.left = b
    root.right = c
    b.left = d
    b.right = e
    c.left = f
    c.right = g
    root
  end

  def build_lopsided
    a = BinaryTreeNode.new('A')
    b = BinaryTreeNode.new('B')
    c = BinaryTreeNode.new('C')
    d = BinaryTreeNode.new('D')
    e = BinaryTreeNode.new('E')
    f = BinaryTreeNode.new('F')
    a.left = b
    a.right = c
    b.left = d
    b.right = e
    e.left = f
    a
  end

  def build_three_node
    root = BinaryTreeNode.new('A')
    root.left = BinaryTreeNode.new('B')
    root.right = BinaryTreeNode.new('C')
    root
  end
end
