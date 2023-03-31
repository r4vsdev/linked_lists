# frozen_string_literal: true

# creates a Linked List
class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    puts "appending #{value}"
    new_node = Node.new(value)
    if @head == nil
      @head = new_node
    else
      @head.pointer = new_node
    end
  end

  def prepend(value)
    puts "prepending #{value}"
    new_node = Node.new(value)
    if @head == nil
      @head = new_node
    else
      new_node.pointer = @head
      @head = new_node
    end
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
p list
list.prepend('Pedro')
p list
list.prepend(3)
p list
