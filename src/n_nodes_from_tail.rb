=begin
  Given a linked list, print n nodes from tail of the list in reverse order 
  Example: 
  1->2->3->4->5->6->7->8->9->10 
  Output: 
  n=3 
  10->9->8
=end

require_relative '../src/linked_list'
require_relative '../src/list_node'

# O(n)
def nodes_from_tail n
  n_list = LinkedList.new(1)
  2.upto(10) { |i| n_list.add(i) }
  reverse_list = n_list.list_to_reverse_arr
  new_list = LinkedList.new(reverse_list[0])
  1.upto(n-1) { |i| new_list.add(reverse_list[i]) }
  new_list.display
end

p nodes_from_tail 3
