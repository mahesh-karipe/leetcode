# https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  p_path = get_traversal_path(root, p)
  q_path = get_traversal_path(root, q)
  lowest_common_ancestor = nil
  (0...[p_path.length, q_path.length].min).each do |index|
    if p_path[index] == q_path[index]
      lowest_common_ancestor = p_path[index]
    else
      break
    end
  end
  
  lowest_common_ancestor
end

def get_traversal_path(root, node)
  current, path = root, []
  while true #&& node.left == current.left && node.right == current.right
    path << current.val
    if node.val == current.val
      break
    elsif node.val > current.val
      current = current.right
    else
      current = current.left
    end
  end
  
  path
end
