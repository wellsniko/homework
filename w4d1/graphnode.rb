require 'set'

class GraphNode
  attr_accessor :value, :neighbors


  def initialize(value)
    self.value = value
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end
end

def bfs(start_node, target_value)
  queue = [start_node]
  been = Set.new()
  until queue.empty?
    node = queue.shift
    unless been.include?(node)
      return node if node.value == target_value
      been.add(node)
      queue += node.neighbors
    end
  end
  return nil
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')

# a.add_neighbor(f)

 a.neighbors = [b, c, e]
 c.neighbors = [b, d]
 e.neighbors = [a]
 f.neighbors = [e]

#  p bfs(a, "b")



# p f.neighbors
p bfs(a, "f")