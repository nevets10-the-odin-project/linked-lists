require_relative 'linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.prepend('hamster')
list.append('snake')
list.append('turtle')

puts list.size
