class LinkedList


  def append(value)

  end

end

class Node
  def initialize(*data)
    data == [] ? @data = nil : @data = data
    @next = nil
  end

  def value
    @data
  end
end

# p node = Node.new("John", 46)
p node = Node.new()
p node.value