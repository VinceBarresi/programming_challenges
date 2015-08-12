require_relative 'spec_helper'
require_relative '../src/cap_and_reverse_alternate_words'

describe 'capitalize and reverse alternate words of a string' do
  it 'should take a string and capitalize and reverse alternate words' do
    str = 'i love unit tests'
    expect(cap_and_reverse_alternate(str)).to eq('i LOVE tinu TESTS')
  end

  it 'should not reverse odd placed words' do
    str = 'unit tests are fun'
    expect(cap_and_reverse_alternate(str)).not_to eq('UNIT stset ARE nuf')
  end
end
