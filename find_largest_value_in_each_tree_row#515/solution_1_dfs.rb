def largest_values(root)
  dfs = lambda do |node, depth, arr|
    return nil unless node
    arr[depth] ||= node.val
    arr[depth] = [node.val, arr[depth]].max
    dfs[node.left, depth+1, arr]
    dfs[node.right, depth+1, arr]
  end

  [].tap &lambda {|this| dfs[root, 0, this]}
end
