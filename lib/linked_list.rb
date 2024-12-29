require_relative './node'

class LinkedList
  attr_accessor :head_node

  def append(value)
    new_node = Node.new
    new_node.value = value

    if head_node.nil?
      self.head_node = new_node
    else
      puts 'Get tail and assign next as new node'
    end
  end

  def prepend(value)
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end
