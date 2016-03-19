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
def max_depth(root)
  return 0 unless root
  
  left_depth = root.left ? max_depth(root.left) : 0
  right_depth = root.right ? max_depth(root.right) : 0

  return [left_depth, right_depth].max + 1
end
