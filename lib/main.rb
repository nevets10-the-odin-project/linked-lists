require_relative 'linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list

puts "Turtle index: #{list.find('turtle')}"
puts "Fish index: #{list.find('fish')}"
