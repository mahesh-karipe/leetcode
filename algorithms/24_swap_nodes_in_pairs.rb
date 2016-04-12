# https://leetcode.com/problems/swap-nodes-in-pairs/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def swap_pairs(head)
  return head unless head && head.next
  
  n1, n2, result = head, head.next, head.next
  prev = nil
  while n1 && n2
    prev.next = n2 if prev
    n1.next = n2.next
    n2.next = n1
    
    
    prev = n1
    n1 = n1.next
    n2 = n1 && n1.next
  end

  result
end
