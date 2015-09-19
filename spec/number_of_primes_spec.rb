require_relative 'spec_helper'
require_relative '../src/number_of_primes'

describe 'number_of_primes' do
	it 'returns the number of primes in a given range' do
		expect(number_of_primes(2..11)).to eq(5)
	end
end
