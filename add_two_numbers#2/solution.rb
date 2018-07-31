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
def add_two_numbers(l1, l2)
    carry = 0
    head = result = l1
    while l1 and l2
        sum = l1.val + l2.val + carry
        if sum / 10 == 1
            carry = 1
        else
            carry = 0
        end
        l1.val = sum % 10
        l1 = l1.next
        l2 = l2.next
    end
    
    while l1
        sum = l1.val + carry
        if sum / 10 == 1
            carry = 1
        else
            carry = 0
        end
        l1.val = sum % 10
        l1 = l1.next
    end
    
    l1 = result
    while l1.next
        l1 = l1.next
    end
    
    while l2
        sum = l2.val + carry
        if sum / 10 == 1
            carry = 1
        else
            carry = 0
        end
        l1.next = ListNode.new sum % 10
        l1 = l1.next
        l2 = l2.next
    end

       
    if carry == 1
        carry_node = ListNode.new(1)
        carry_node.next = nil
        if l1
            l1.next = carry_node
        end
        if l2
            l2.next = carry_node
        end
    end
    head
end
