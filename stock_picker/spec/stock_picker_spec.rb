require 'rspec/autorun'
require '../stock_picker.rb'

describe 'Stock picker exercise' do
  let (:prices) { [17,3,6,9,15,8,6,1,10] }

  it 'returns the best days to buy and sell' do
    expect(stock_picker(prices)).to eq([1,4])
  end

  it 'returns the best days to buy and sell' do
    expect(stock_picker([7,1,5,3,6,4])).to eq([1,4])
  end

  it 'returns an empty array' do
    expect(stock_picker([7,6,4,3,1])).to eq([])
  end

end