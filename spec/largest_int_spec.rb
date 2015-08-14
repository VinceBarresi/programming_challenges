require_relative 'spec_helper'
require_relative '../src/largest_int'

describe 'largest int' do
  it 'returns the largest int from digits of an int' do
    expect(largest_int(72190234992)).to eq(99974322210)
  end
end
