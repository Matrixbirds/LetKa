tion for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def search_bst(root, val)
    return [] unless root
    if val == root.val
        return root
    end
    if val < root.val
        return search_bst(root.left, val)
    else
        return search_bst(root.right, val)
    end
end
    
