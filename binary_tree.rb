class BinaryTreeNode
  def initialize(data)
    @data = data
  end

  def pre_order
    result = ''
    result += @data
    result += @left.data
    result += @right.data
    result
  end

  def in_order
    result = ''
    stack = []
    current = self
    until stack.empty? && current.nil?
      if current.nil?
        current = stack.pop
        result += current.data
        current = current.right
      else
        stack.push(current)
        current = current.left
      end
    end
    result
  end

  attr_reader :data
  attr_accessor :left
  attr_accessor :right
end
