class BinarySearchTree
  def initialize
    @root = nil
  end

  def insert(data)
    if @root.nil?
      @root = Node.new(data)
    else
      @root.insert(data)
    end
  end

  def in_order(node=@root, &block)
    return if node.nil?
    in_order(node.left, &block)
    yield node
    in_order(node.right, &block)
  end

  def search(data, node=@root)
    return nil if node.nil?
    if data < node.data
      search(data, node.left)
    elsif data > node.data
      search(data, node.right)
    else
      node
    end
  end

  def check_height(node)
    return 0 if node.nil?

    leftheight = check_height(node.left)
    return -1 if leftheight == -1

    rightheight = check_height(node.right)
    return -1 if rightheight == -1

    diff = leftheight - rightheight
    if diff.abs > 1
      -1
    else
      [leftheight, rightheight].max + 1
    end
  end

  def is_balanced?(node=@root)
    check_height(node) == -1 ? false : true
  end
end

class Node
  attr_reader :data, :left, :right
  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(branch_data)
    if branch_data <= @data
      @left.nil? ? @left = Node.new(branch_data) : @left.insert(branch_data)
    else
      @right.nil? ? @right = Node.new(branch_data) : @right.insert(branch_data)
    end
  end
end
require "pry"; binding.pry
