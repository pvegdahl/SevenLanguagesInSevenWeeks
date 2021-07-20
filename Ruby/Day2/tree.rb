class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def self.construct_from_hash(hash)
    return self.construct_from_hash_helper(hash)[0]
  end

  def self.construct_from_hash_helper(hash)
    hash.map {|k, v| Tree.new(k, self.construct_from_hash_helper(v))}
  end

  def visit_all(depth, &block)
    visit(depth, &block)
    children.each {|c| c.visit_all(depth+1, &block)}
  end

  def visit(depth, &block)
    block.call(self, depth)
  end
end

ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])

puts "Visiting a node"
ruby_tree.visit(0) {|node, depth| puts ".." * depth + node.node_name}
puts

puts "Visiting the whole tree"
ruby_tree.visit_all(0) {|node, depth| puts ".." * depth + node.node_name}

family_hash = {"grandpa" => {"dad" => {"child1" => {}, "child2" => {}}, "uncle" => {"cousin" => {}}}}
family_tree = Tree.construct_from_hash(family_hash)

puts "Visiting the family tree"
family_tree.visit_all(0) {|node, depth| puts ".." * depth + node.node_name}
