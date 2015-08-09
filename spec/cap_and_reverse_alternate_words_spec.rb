require_relative 'spec_helper'
require_relative '../cap_and_reverse_alternate_words'

describe 'capitalize and reverse alternate words of a string' do
  it 'should take a string and capitalize and reverse alternate words' do
    str = 'i love unit tests'
    cap_and_reverse_alternate(str).should eq('i LOVE tinu TESTS')
  end

  it 'should not reverse odd placed words' do
    str = 'unit tests are fun'
    cap_and_reverse_alternate(str).should_not eq('UNIT stset ARE nuf')
  end
end
