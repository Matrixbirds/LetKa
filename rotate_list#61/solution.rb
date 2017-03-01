# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
  return head if head == nil or k == 0
  new_head, tail = nil, head
  len = 1
  while tail.next
    tail = tail.next
    len += 1
  end
  tail.next = head
  k %= len
  i = 0
  while i < len - k
    tail = tail.next
    k+=1
  end
  new_head = tail.next
  tail.next = nil
  new_head
end
