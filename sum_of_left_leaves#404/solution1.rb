# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root)
  sum = [0]
  sum_left_leave(root, sum)
  sum.reduce(:+)
end

def sum_left_leave(root, _sum)
  if root.nil?
    0
  elsif root.left && root.right
    _sum << root.left.val if root.left.left.nil? && root.left.right.nil?
    sum_left_leave(root.left, _sum)
    sum_left_leave(root.right, _sum)
  elsif root.left
    _sum << root.left.val if root.left.left.nil? && root.left.right.nil?
    sum_left_leave(root.left, _sum)
  elsif root.right
    sum_left_leave(root.right, _sum)
  end
end
