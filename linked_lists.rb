# frozen_string_literal: true

# creates a Linked List
class LinkedList
  attr_reader :size, :head
  def initialize
    @size = 0
    @head = nil
  end

  def append(value)
    @size += 1
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      tmp = @head
      while tmp.next_node != nil do
        tmp = tmp.next_node
      end
      tmp.next_node = new_node
    end    
  end

  def prepend(value)
    @size += 1
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def tail
    tmp = @head
    while tmp.next_node != nil do
      tmp = tmp.next_node
    end
    return tmp
  end

  def at(index)
    return 'Err: Out of range' if index > size
    tmp = @head
    i = 0
    while i != index do
      tmp = tmp.next_node
      i += 1
    end
    return tmp
  end

  def pop
    tmp = @head
    while tmp.next_node.next_node != nil do
      tmp = tmp.next_node
    end
    @size -= 1
    tmp.next_node = nil
  end
end

# creates a node with default value and pointer set to nil
class Node < LinkedList
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
# p list
list.append(3)
# p list
list.append(4)
# p list
list.append(5)
p list