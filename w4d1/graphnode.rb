require 'set'

class GraphNode
  attr_accessor :value, :neighbors


  def initialize(value)
    self.val = val
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
      return node.val if node.val == target_value
      been.add(node)
      queue += node.neighbors
    end
  end
  return nil
end