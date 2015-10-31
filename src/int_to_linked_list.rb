=begin
  Write a function that takes input as integer and converts 
  it into a linked list where each node represents a digit of the input integer. 
  e.g. i/p : 123 
  expected result: [1] => [2] => [3]
=end

require_relative 'linked_list'
require_relative 'list_node'

# O(n)
def int_to_list int
  int_arr, x = int.to_s.split(''), 1
  int_list = LinkedList.new(int_arr.first)
  int_arr.size.times do
    int_list.add(int_arr[x])
    x+=1
  end
int_list.display
end
