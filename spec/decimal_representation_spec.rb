require_relative 'spec_helper'
require_relative '../src/decimal_representation'

describe 'decimal representation' do
  it 'formats the output of a num/den' do
    expect(decimal_representation(11,3)).to eq('3.(67)')
  end
end
