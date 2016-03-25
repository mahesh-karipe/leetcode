# https://leetcode.com/problems/remove-duplicates-from-sorted-list/
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
def delete_duplicates(head)
  return head unless head 
  current, prev = head.next, head
  while current
    if current.val == prev.val
      prev.next = current.next
      current = current.next
    else
      current, prev = current.next, current      
    end
  end
  
  head
end
