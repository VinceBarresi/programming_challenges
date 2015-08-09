require_relative '../return_index_at_key'

describe 'returns the index of a value in an array' do
  it 'should take a value and return the index of that value' do
    arr = [1, 2, 3]
    index_at_key(2, arr).should eq('1')
  end

  it 'should not return the value of the input' do
    arr = [1, 2, 3]
    index_at_key(1, arr).should_not eq('1')
  end
end