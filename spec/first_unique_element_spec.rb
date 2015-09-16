require_relative 'spec_helper'
require_relative '../src/first_unique_element'

describe 'first_unique_element' do
	it 'returns the first unique element in an array' do
		expect(first_unique_element(['a', 'a', 'u', 'b'])).to eq('u')
	end
end
