require 'rspec/autorun' 
require_relative '../ceasars_cipher.rb'

describe 'ceasars_cipher exercise' do 
  it 'shifts by 5' do
    expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it 'shifts by 13' do
    expect(ceasar_cipher("Hello Emmaline!", 13)).to eq("Uryyb Rzznyvar!")
  end

  it 'shifts by 26' do
    expect(ceasar_cipher("Hello Emmaline!", 26)).to eq("Hello Emmaline!")
  end


  
end
