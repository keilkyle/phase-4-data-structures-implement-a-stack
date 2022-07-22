# your code here

class Stack

    def initialize(limit = 10)
        @stack = []
        if limit
            @limit = limit
        end
    end

    def size
        @stack.length
    end

    def empty?
        @stack.size == 0    
    end

    def full?
        @stack.size == @limit
    end

    def push(value)
        if @stack.size < @limit
            @stack.push(value)
        else
            raise "Stack Overflow"
        end 
    end

    def pop
        @stack.pop
    end

    def search(value)
        if @stack.include? value
            @stack.length - (@stack.index value) - 1
        else
            -1
        end
    end

    def peek
        length = @stack.length
        @stack[length-1]
    end

end