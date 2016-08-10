class BinaryTreeNode
  def initialize(data)
    @data = data
  end

  def in_order
    result = ''
    stack = []
    current = self
    while current
      stack.push(current)
      current = current.left
    end

    result += stack.pop.data until stack.empty?

    current = @right
    while current
      result += current.data
      current = current.right
    end
    result
  end

  attr_reader :data
  attr_accessor :left
  attr_accessor :right
end
