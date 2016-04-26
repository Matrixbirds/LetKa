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
def sort_list(head)
    @list = []
    while(head)
        @list << head.val
        head = head.next
    end
    @list.sort
end
