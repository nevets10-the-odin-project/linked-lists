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
    new_node.next_node = head
    self.head_node = new_node
  end

  def size
    cur = head
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
    cur = head
    cur = cur.next_node while cur.next_node
    cur
  end

  def at(index)
    cur = head

    index.times do
      return nil if cur.nil?

      cur = cur.next_node
    end

    cur
  end

  def pop
    new_last_index = size - 2
    new_last_node = at(new_last_index)
    new_last_node.next_node = nil
  end

  def contains?(value)
    cur = head

    while cur
      return true if cur.value == value

      cur = cur.next_node
    end

    false
  end

  def find(value)
    cur = head
    index = 0

    while cur
      return index if cur.value == value

      index += 1
      cur = cur.next_node
    end

    nil
  end

  def to_s
    cur = head
    output = ''

    while cur
      output += "#{cur.value} -> "
      cur = cur.next_node
    end

    output += 'nil'
    output
  end
end
