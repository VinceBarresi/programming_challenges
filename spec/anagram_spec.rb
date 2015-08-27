require_relative 'spec_helper'
require_relative '../src/anagram'

describe 'anagram?' do
  it 'returns true if two strings are anagrams of eachother' do
    expect(anagram?('secure', 'rescue')).to be_truthy
  end

  it 'returns false if two strings are not anagrams of eachother' do
    expect(anagram?('i love ruby', 'i really love ruby')).to be_falsy
  end
end
