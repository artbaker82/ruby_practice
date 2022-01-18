require 'rspec/autorun'
require '../bubble_sort.rb'

describe 'bubble sort exercise' do
  let(:array) { [4,3,78,2,0,2] }
  it 'returns a sorted array' do
    expect(bubble_sort(array)).to eq([0,2,2,3,4,78])
  end

  it 'returns a sorted array' do
    expect(bubble_sort([200, 4, 1000, 0, -2])).to eq([-2, 0, 4, 200, 1000])
  end
end