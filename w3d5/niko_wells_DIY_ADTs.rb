class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end
    
    def pop
        @stack.pop if @stack.length > 1
        @stack
    end

    def peek
        @stack.last if @stack.length > 0
    end
end

class Queue
    def initialize(q)
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift if queue.length > 0
    end

    def peek
        @queue.first if queue.length > 0
        @queue
    end
end

class Map #!should be subarrays, not hash
    def initialize
        @pairs = []
    end

    def set(key,value)
        keys[key]=value
    end

    def get(key)
        keys.select {|k,v| k == key}
    end

    def delete(key)
        keys.reject! {|k,v| k == key}
    end
end