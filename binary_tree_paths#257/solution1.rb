# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
  paths = []
  binary_tree_edge(root, "#{root.val}", paths) if root
  paths
end

def binary_tree_edge(root, list, _paths)
  if root && root.left && root.right
    binary_tree_edge(root.left, "#{list}->#{root.left.val}", _paths) 
    binary_tree_edge(root.right, "#{list}->#{root.right.val}", _paths)
  elsif root.left
    binary_tree_edge(root.left, "#{list}->#{root.left.val}", _paths)
  elsif root.right
    binary_tree_edge(root.right, "#{list}->#{root.right.val}", _paths)
  else
    _paths << list
  end
end
