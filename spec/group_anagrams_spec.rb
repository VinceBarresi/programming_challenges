require_relative 'spec_helper'
require_relative '../src/group_anagrams'

describe 'group_anagrams' do 
  it 'sorts and returns anagrams in an array' do
    expect(group_anagrams(['tar','rat','banana','atr'])). to eq([["tar", "rat", "atr", "banana"]])
  end
end
