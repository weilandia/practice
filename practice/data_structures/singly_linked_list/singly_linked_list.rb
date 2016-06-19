class SinglyLinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def is_empty?
    @head.nil?
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    new_node
  end

  def push(data)
    current_node = @head
    until current_node.next == nil
      current_node = current_node.next
    end
    current_node.next = Node.new(data)
    current_node.next
  end

  def remove!(node_to_remove)
    node = @head
    prev = nil
    until node.next.nil?
      if node == node_to_remove
        prev.next = node.next
        return
      else
        prev = node
      end
      node = node.next
    end
  end

  def print(&block)
    node = @head

    until node.nil?
      node = node.next
      yield node
    end
  end
end

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
  end
end
require "pry"; binding.pry
