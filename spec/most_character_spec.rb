require_relative 'spec_helper'
require_relative '../src/most_character'

describe 'most char' do
  it 'returns the character that appears the most in a string' do
    expect(most_char('coolio')).to eq('o')
  end
end
