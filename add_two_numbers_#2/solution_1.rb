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
def add_two_numbers(_l1, _l2)
  head = list = nil
  ex_val = 0
  while _l1 || _l2 || ex_val == 1
    sum = 0
    if _l1
      sum += _l1.val
      _l1 = _l1.next
    end
    if _l2
      sum += _l2.val
      _l2 = _l2.next
    end
    digit = (sum + ex_val) % 10
    ex_val = (sum + ex_val) / 10
    if head
      list.next = ListNode.new digit
      list = list.next
    else
      head = ListNode.new digit
      list = head
    end
  end
  head
end
