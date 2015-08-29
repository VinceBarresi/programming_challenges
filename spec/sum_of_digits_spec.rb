require_relative 'spec_helper'
require_relative '../src/sum_of_digits'

describe 'sum_string' do
	it 'returns the sum of a string of integers' do
		expect(sum_string('5678')).to eq(26)
	end
end
