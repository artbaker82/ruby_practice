require 'rspec/autorun' 
require_relative '../ceasars_cipher.rb'

describe 'ceasars_cipher exercise' do 
  it 'shifts by 5' do
    expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end
