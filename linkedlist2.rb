class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data) #creates new node equal to previous node
  end

  def pop
    return print "nil\n" if @data.nil?      #check to see if node is empty
    print "#{@data.value}\n"                #prints the first node
    @data = @data.next_node                 
  end    
end

  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

  def reverse_list(list, previous=nil) 
    if list                             #checks to see if it is a linked list
      next_node = list.next_node        #creates next node var and stores the list.next_node
      list.next_node = previous         #sets list.next_node to be nil
      reverse_list(next_node, list)     #recursion - calls itself
    end 
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
reverse_list(node3)
print_values(node1)