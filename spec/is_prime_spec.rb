require_relative 'spec_helper'
require_relative '../src/is_prime'

describe 'is prime' do
  it 'returns true if a number is prime' do
    expect(is_prime?(3)).to eq(true)
  end

  it 'returns false if a number is not prime' do
    expect(is_prime?(9)).to eq(false)
  end
end
