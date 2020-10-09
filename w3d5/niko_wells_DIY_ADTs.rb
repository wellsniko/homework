class Stack
    def initialize(stack)
        @stack = stack
    end

    def push(el)
        @stack.push(el)
    end
    
    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end
end

class Queue
    def initialize(q)
        @q = q
    end

    def enqueue(el)
        @q.push(el)
    end

    def dequeue
        @q.shift
    end

    def peek
        @q.last
    end
end

class Map
    def initialize(keys)
        @keys = keys
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