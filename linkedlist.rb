class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :last_node

  def initialize
    @last_node = nil
  end

  def push(value)
    @last_node = LinkedListNode.new(value, @last_node) #creates new node equal to previous node
  end

  def pop
    return print "nil\n" if @last_node.nil?      #check to see if node is empty
    print "#{@last_node.value}\n"                #prints the first node
    @last_node = @last_node.next_node                 
  end  

  def print_values(list_node = @last_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
    return
    end
  end 

  def reverse_list(list)
    stack = Stack.new           #creates a stack utilizing Stack class
      while list
        stack.push(list.value)
        list = list.next_node
      end

    return stack.last_node
  end

end


stack = Stack.new
stack.push(5)
stack.push(10)
stack.push(15)

stack.print_values
puts "-------"
