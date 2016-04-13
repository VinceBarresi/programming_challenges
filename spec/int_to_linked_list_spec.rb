require_relative '../src/linked_list'
require_relative '../src/list_node'
require_relative '../src/int_to_linked_list'

describe 'int_to_list' do
  it 'converts an int to a linked list'	do
    expect(int_to_list(12345)).to eq('1->2->3->4->5->')
  end
end
