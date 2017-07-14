class Node
  attr_reader :parent, :value, :left, :right

  def initialize(parent, value)
    @parent = parent
    @value = value
    @left = nil
    @right = nil
  end

  def create_child_node(new_value)
    # alerts its parent each time a node is created
    # hey tree a node was made
    # it does not return a running total nor any numbers. 
    # It's only job is to tell the tree that a node was made
    parent.birth_notification

    if value > new_value
      @left = Node.new(self, new_value)
    else value < new_value
      @right = Node.new(self, new_value)
    end
  end

  def birth_notification
    # node tells parent new node created
    parent.birth_notification
  end
end


class BinaryTree
  attr_reader :root, :total_nodes

  def initialize(node_value)
    @root = Node.new(self, node_value)
    @total_nodes = 1
  end

  def birth_notification
    @total_nodes += 1
  end
end


