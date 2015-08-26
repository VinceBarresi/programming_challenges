require_relative 'spec_helper'
require_relative '../src/remove_duplicates_from_strings'

describe 'remove_duplicates' do
  it 'removes duplicates characters in a pair of strings' do
    expect(remove_duplicates('abc', 'cde')).to eq('ab de')
  end
end
