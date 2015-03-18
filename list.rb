# need to create a representation of a Node (or Vertex).
# Write a method 'add_to_tail' that appends a new value to the end.
# Write a method 'length' that returns the length of a list.
#  Override the 'to_s' method to nicely print the list.
# Write a function 'remove' to remove a node from the list.

class Node
  def initialize(val)
    @val = val
    @next = nil
  end
  def add_to_tail(val)
     if @next == nil 
      @next = Node.new(val)
     else
      @next.add_to_tail(val)
     end
  end
  def length 
    if @next == nil
      1
    else
      1 + @next.length
    end
  end

  def remove(val)
    if @val == nil
      @next
    else
      if @next
        @next = @next.remove(val)
      end
      self
    end
  end

  def to_s
    if @next == nil 
      @val
    else
    "#{@val} #{@next}"
    end
  end
end

head = Node.new("d")
head.add_to_tail("o")
head.add_to_tail("g")
head.add_to_tail("g")
head.add_to_tail("y")


puts head
puts head.length







