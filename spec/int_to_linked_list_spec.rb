require_relative '../src/linked_list'
require_relative '../src/list_node'

describe 'int_to_list' do
	it 'converts an integer into a Linked List' do
		int = 12345
		int_arr = int.to_s.split('')
		int_list = LinkedList.new(int_arr.first)
		x = 1
		int_arr.size.times do
			int_list.add(int_arr[x])
			x+=1
		end
		expect(int_list.display).to eq('1->2->3->4->5->')
	end
end