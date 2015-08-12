require_relative 'spec_helper'
require_relative '../add_two_ints_without_+'

describe 'integer addition without +' do
  it 'adds two integers at the bit level' do
    expect(sum(27, 3)).to eq(30)
  end

  it 'does not add integers incorrectly' do
    expect(sum(27, 2)).to_not eq(30)
  end
end
