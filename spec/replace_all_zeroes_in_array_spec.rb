require_relative '../src/replace_all_zeroes_in_array'

describe 'replace_zeroes' do
  it 'replaces zeroes with fives in any array' do
    expect(replace_zeroes([0,0,0,0,0])).to eq([5,5,5,5,5])
  end
end
