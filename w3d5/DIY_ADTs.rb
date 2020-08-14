# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:
# To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!

  class Stack

    attr_reader :stacks
    def initialize(stacks)
      # create ivar to store stack here!
      @stacks = stacks
    end

    def push(ele)
      # adds an element to the stack
      @stacks << ele
      @stacks
    end

    def pop
      # removes one element from the stack
      @stacks.delete(@stacks.last)
      @stacks
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stacks.pop
    end
  end
  

# Exercise 2 - Queue 
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

class Queue
  
  def initialize
    @list = []
  end

  def enqueue(el)
    @list << el 
  end

  def dequeue
    @list.shift
    @list 
  end

  def peek
    @list.first
  end 

end


# Test your code to ensure it follows the principle of FIFO.

# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map

  def initialize
    @array = []
  end

  def set(key, value)
    @array << [key, value]
  end

  def get(key)
    new_arr = []
    @array.flatten.each_with_index do |ele, i|
      if ele == key
         new_arr.push(ele)
         new_arr.push(@array.flatten[i + 1])
      end
    end
    new_arr
  end

  def delete(key)
    @array.delete_if {|sub_arr| sub_arr[0] == key }
    @array
  end
  
end


