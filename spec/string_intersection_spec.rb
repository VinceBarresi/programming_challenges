require_relative 'spec_helper'
require_relative '../src/string_intersection'

describe 'string intersection' do
  it 'returns a list of values that intersect' do
    expect(string_intersection(['a','b','c','d'],['a','d'])).to eq(['a','d'])
  end
end
