require 'pry'
require_relative 'binary_search_tree2'

RSpec.describe '#BinarySearchTree' do 
  context "#Node" do 

    it "has a value and no children" do 
      value = 5

      tree = BinaryTree.new(value)
      node = Node.new(tree, value)

      expect(node.parent).to eq(tree)
      expect(node.value).to eq(5)
      expect(node.left).to eq(nil)
      expect(node.right).to eq(nil)
    end
    
    it "inserts a new node to the left of the root" do 
      value = 5
      tree = BinaryTree.new(value)
      new_value = 1
      tree.root.create_child_node(new_value)

      expect(tree.root.left.value).to eq(1)
    end

    it "inserts a new node to the right of the root" do 
      value = 5
      tree = BinaryTree.new(value)
      new_value = 8
      tree.root.create_child_node(new_value)

      expect(tree.root.right.value).to eq(8)
    end

    it "creates grandchild node to right of parent node" do 
      value = 5
      tree = BinaryTree.new(value)
      new_value = 1
      child_node = tree.root.create_child_node(new_value)
      next_value = 2
      grandchild_node = child_node.create_child_node(next_value)

      expect(child_node.right).to eq(grandchild_node)
      expect(child_node.right.value).to eq(2)
    end

    it "creates grandchild node to left of parent node" do 
      value = 5
      tree = BinaryTree.new(value)
      new_value = 1
      child_node = tree.root.create_child_node(new_value)
      next_value = 0
      grandchild_node = child_node.create_child_node(next_value)

      expect(child_node.left).to eq(grandchild_node)
      expect(child_node.left.value).to eq(0)
    end

    it "inserts a grandchild node to the left of the root" do 
      value = 5
      tree = BinaryTree.new(value)
      new_value = 8
      child = tree.root.create_child_node(new_value)
      next_value = 6
      grandchild_node = child.create_child_node(next_value)

      expect(child.left).to eq(grandchild_node)
      expect(child.left.value).to eq(6)
    end

    it "inserts a grandchild node to the right of the root" do 
      value = 5
      tree = BinaryTree.new(value)
      new_value = 8
      child = tree.root.create_child_node(new_value)
      next_left_value = 6
      grandchild_left_node = child.create_child_node(next_left_value)

      next_right_value = 9
      grandchild_right_node = child.create_child_node(next_right_value)

      expect(child.right).to eq(grandchild_right_node)
      expect(child.right.value).to eq(9)
    end
  end

  context "#BinaryTree" do 

    it "returns the tree's root value" do 
      root_value = 5
      tree = BinaryTree.new(root_value)

      expect(tree.root.value).to eq(5)
    end

    it "knows it has one node" do 
      root_value = 5
      tree = BinaryTree.new(root_value)

      expect(tree.total_nodes).to eq(1)
    end

    it "knows it has two nodes" do 
      root_value = 5
      tree = BinaryTree.new(root_value)
      tree.root.create_child_node(1)

      expect(tree.total_nodes).to eq(2)
    end
  end
end