class BinaryTreeNode
  def initialize(data)
    @data = data
  end

  def in_order
    result = ''
    result += @left.data if @left
    result += @data
    result += @right.data if @right
    result
  end

  attr_reader :data
  attr_accessor :left
  attr_accessor :right
end
