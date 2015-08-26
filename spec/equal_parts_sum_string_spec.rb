require_relative 'spec_helper'
require_relative '../src/equal_parts_sum_string'

describe 'equal_part_sum_string' do
  it 'returns a final string if the sum of its equal parts equal eachother' do
    expect(equal_parts_sum_string('678876')).to eq('12345876678')
  end
end
