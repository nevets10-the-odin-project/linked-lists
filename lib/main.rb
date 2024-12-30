require_relative 'linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list

puts "Contains turtle? #{list.contains?('turtle')}"
puts "Contains fish? #{list.contains?('fish')}"
