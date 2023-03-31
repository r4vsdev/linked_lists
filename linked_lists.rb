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
list.append('Pedro')
p list
list.append(3)
p list
