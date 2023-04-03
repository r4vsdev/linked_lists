# frozen_string_literal: true

# creates a Linked List
class LinkedList
  def initialize
    @nodes = 0
    @head = nil
  end

  def append(value)
    @nodes += 1
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      @head.pointer = new_node
    end
  end

  def prepend(value)
    @nodes += 1
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      new_node.pointer = @head
      @head = new_node
    end
  end

  def size
    @nodes
  end

  attr_reader :head

  def tail(node = @head)
    return node if node.pointer.nil?

    next_node = node.pointer.pointer
    tail(next_node)
  end
end

# creates a node with default value and pointer set to nil
class Node < LinkedList
  attr_accessor :pointer, :value

  def initialize(value = nil, pointer = nil)
    @value = value
    @pointer = pointer
  end
end

list = LinkedList.new
list.prepend('Pedro')
list.prepend(3)
# p list
p list.tail
