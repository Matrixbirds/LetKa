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
  l3_head, l3_node = nil, nil
  while l1 && l2
    if l1.val > l2.val
      unless l3_head
        l3_node = l3_head = l2
      else
        l3_node.next = l2
        l3_node = l3_node.next
      end
      l2 = l2.next
    else
      unless l3_head
        l3_node = l3_head = l1
      else
        l3_node.next = l1
        l3_node = l3_node.next
      end
      l1 = l1.next
    end
  end
  while l1
    unless l3_head
      l3_node = l3_head = l1
    else
      l3_node.next = l1
      l3_node = l3_node.next
    end
    l1 = l1.next
  end
  while l2
    unless l3_head
      l3_node = l3_head = l2
    else
      l3_node.next = l2
      l3_node = l3_node.next
    end
    l2 = l2.next
  end
  l3_head
end
