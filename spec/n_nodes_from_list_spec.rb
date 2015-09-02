require_relative '../src/linked_list'
require_relative '../src/list_node'
require_relative '../src/n_nodes_from_tail'

describe 'nodes_from_tail' do
  it 'returns a LinkedList of 3 nodes from the tail node in reverse' do
    expect(nodes_from_tail(3)).to eq('10->9->8')
  end

  it 'returns a LinkedList of 4 nodes from the tail node in reverse' do
    expect(nodes_from_tail(4)).to eq('10->9->8->7')
  end

  it 'returns a LinkedList of 5 nodes from the tail node in reverse' do
    expect(nodes_from_tail(5)).to eq('10->9->8->7->6')
  end

  it 'returns a LinkedList of 6 nodes from the tail node in reverse' do
    expect(nodes_from_tail(6)).to eq('10->9->8->7->6->5')
  end
end
