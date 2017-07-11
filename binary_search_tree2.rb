class Node
  attr_accessor :value, :left, :right

  def initialize(value, left:nil, right:nil)
    @value = value
    @left = nil
    @right = nil
  end

  def create_child_node(new_value)
    if value > new_value
      @left = Node.new(new_value, left:nil, right:nil)
    else value < new_value
      @right = Node.new(new_value, left:nil, right:nil)
    end
  end
end


class BinaryTree
  attr_accessor :root

  def initialize(node_value)
    @root = Node.new(node_value, left:nil, right:nil)
  end


end