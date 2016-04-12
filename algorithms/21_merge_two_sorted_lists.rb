# https://leetcode.com/problems/merge-two-sorted-lists/
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  return l2 unless l1
  return l1 unless l2

  if l1.val < l2.val
    result = l1
    l1 = l1.next
  else
    result = l2
    l2 = l2.next
  end

  current = result
  while l1 && l2
    if l1.val < l2.val
      current.next = l1
      l1 = l1.next
    else 
      current.next = l2
      l2 = l2.next
    end
    current = current.next
  end
  
  current.next = l1 || l2
  
  result
end
