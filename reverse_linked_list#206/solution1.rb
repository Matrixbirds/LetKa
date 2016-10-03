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
  if head && head.next
      head_node = head
      new_node = ListNode.new head_node.val
      new_head = nil
      while head_node = head_node.next
        if new_head
          new = ListNode.new head_node.val
          new.next = new_head
          new_head = new
        else
          new_head = ListNode.new head_node.val
          new_head.next = new_node
        end
      end
      new_head
  else
    head
  end
end
