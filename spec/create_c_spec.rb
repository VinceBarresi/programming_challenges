require_relative 'spec_helper'
require_relative '../src/create_c'

describe 'create_c' do
	it 'returns the an int c based that is greater than another int b' do
		expect(create_c(1119, 8953)).to eq(9111)
	end

	it 'returns nil if created int c is not greater than b' do
		expect(create_c(1127, 8000)).to eq(nil)
	end
end
