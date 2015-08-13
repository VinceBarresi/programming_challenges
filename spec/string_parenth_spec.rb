require_relative 'spec_helper'
require_relative '../src/string_parenth'

describe 'a string with parentheses' do
  it 'should have matching parentheses' do
    str = '((a))'
      expect(valid_parenths(str)).to eq('valid string')
  end

  it 'should not be a valid string if it has miss matched right parentheses' do
    str = '((a)))'
      expect(valid_parenths(str)).to eq('invalid string')
  end

  it 'should not be a valid string if it has miss matched left parentheses' do
    str = '(((((a)))'
      expect(valid_parenths(str)).to eq('invalid string')
  end   
end
