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
      tmp = tmp.next_node until tmp.next_node.nil?
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
    tmp = tmp.next_node until tmp.next_node.nil?
    tmp
  end

  def at(index)
    return 'Err: Out of range' if index > size

    tmp = @head
    i = 0
    while i != index
      tmp = tmp.next_node
      i += 1
    end
    tmp
  end

  def pop
    tmp = @head
    tmp = tmp.next_node until tmp.next_node.next_node.nil?
    @size -= 1
    tmp.next_node = nil
  end

  def contains?(value)
    return true if @head.value == value

    tmp = @head
    until tmp.next_node.nil?
      tmp = tmp.next_node
      return true if value == tmp.value
    end
    false
  end

  def find(value)
    return 0 if value == @head.value

    tmp = @head
    i = 0
    until tmp.next_node.nil?
      tmp = tmp.next_node
      i += 1
      return i if value == tmp.value
    end
    nil
  end

  def to_s
    tmp = @head
    formatted = "( #{tmp.value} ) -> "
    until tmp.next_node.nil?
      tmp = tmp.next_node
      formatted << "( #{tmp.value} ) -> "
    end
    formatted << 'nil'
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
