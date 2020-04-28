require 'byebug'
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


    def bfs(starting_node, target_value)
# debugger
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            current_node = queue.shift 
            unless visited.include?(current_node)
            return current_node.value if current_node.value == target_value
            visited.add(current_node)
            queue += current_node.neighbors
            end
        end
        nil 
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e] 

p a.bfs(a, "b")