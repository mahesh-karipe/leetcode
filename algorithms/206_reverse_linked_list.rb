# https://leetcode.com/problems/reverse-linked-list/
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
def reverse_list(head)
  return head unless head
  
  _current = head
  _next = _current.next
  _prev = nil
  
  while _next
    _next_next = _next.next
    _next.next, _current.next = _current, _prev
    _prev, _current, _next = _current, _next, _next_next
  end
  
  _current
end
