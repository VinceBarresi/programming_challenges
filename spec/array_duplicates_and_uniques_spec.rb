require_relative 'spec_helper'
require_relative '../src/array_duplicates_and_uniques'

describe 'array_duplicates' do 
  it 'returns unique elements of arrays after comparisons' do
    expect(array_duplicates([1,3,5,7,9], [1,2,3,5,4,1,8,9,7], [1,3,5,7,9,2,1,4,6,5,8])).to eq([2,4,6,8])
  end
end
