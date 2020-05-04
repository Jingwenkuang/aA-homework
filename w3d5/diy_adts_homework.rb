 class Stack
    def initialize
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack
    end
  end

#   stack = Stack.new([1,2,3,4,5])
#   p stack.push(6)
#   p stack.pop
#   p stack.peek

class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
        #add ele to the end
    end

    def dequeue
        @queue.shift
        #remove the first ele
    end

    def peek
        @queue
    end
end

# queue = Queue.new([1,2,3])
# p queue.enqueue(7)
# p queue.dequeue
# p queue.peek

class Map
    def initialize
        @map = []
    end

    def set(key, value)
        idx = @map.index {|sub_arr| sub_arr[0] == key}
        if idx 
            @map[idx][1] = value
        else
            @map << [key, value]
        end
        value
    end


    def get(key)
       @map.each {|sub| return sub[1] if sub[0] == key}
       nil
    end

    def delete(key)
        value = get(key)
        @map.reject!{|sub| sub[0] == key}
        value
    end

    def show
        @map
    end
    
end

# map = Map.new([[1,2],[3,4],[5,6]])
# p map.set(6,8)
# p map.get(3)
# p map.delete(1)
# p map.show