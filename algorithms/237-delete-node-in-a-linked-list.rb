# https://leetcode.com/problems/delete-node-in-a-linked-list/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} node
# @return {Void} Do not return anything, modify node in-place instead.
def delete_node(node)
  return unless node.next
  
  while node.next && node.next.next
    node.val = node.next.val
    node = node.next
  end
  node.val = node.next.val
  node.next = node.next.next
end
