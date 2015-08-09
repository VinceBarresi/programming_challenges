require_relative '../even_odd_index'

describe 'even and odd values of array' do
  it 'should sort even values in even indeces and odd values in odd indeces' do
    arr = [1, 2, 3, 4, 5, 6]
    even_odd(arr).should eq([2, 1, 4, 3, 6, 5])
  end

  it 'should not sort even values into odd indeces' do
    arr = [1, 2, 3, 4, 5, 6]
    even_odd(arr).should_not eq([1, 2, 3, 4, 5, 6])
  end
end