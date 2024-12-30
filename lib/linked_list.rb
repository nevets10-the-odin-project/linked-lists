require_relative './node'

class LinkedList
  attr_accessor :head_node

  def append(value)
    new_node = Node.new
    new_node.value = value

    if head_node.nil?
      self.head_node = new_node
    else
      tail_node = tail
      tail_node.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new
    new_node.value = value
    new_node.next_node = head_node
    self.head_node = new_node
  end

  def size
    cur = head_node
    count = 0

    while cur
      count += 1
      cur = cur.next_node
    end

    count
  end

  def head
    head_node
  end

  def tail
    cur = head_node
    cur = cur.next_node while cur.next_node
    cur
  end

  def at(index)
    cur = head_node

    index.times do
      return nil if cur.nil?

      cur = cur.next_node
    end

    cur
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
    cur = head_node
    output = ''

    while cur
      output += "#{cur.value} -> "
      cur = cur.next_node
    end

    output += 'nil'
    output
  end
end
