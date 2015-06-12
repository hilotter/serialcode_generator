require 'spec_helper'

describe SerialcodeGenerator do
  it 'should have a version number' do
    expect(SerialcodeGenerator::VERSION).not_to be nil
  end

  it 'should raise a error message' do
    expect{
      SerialcodeGenerator.generate('test')
    }.to raise_error(RuntimeError, 'Digit is not integer')
  end

  it 'should generate 6 digits serialcode' do
    for i in 0..1000 do
      serialcode = SerialcodeGenerator.generate
      expect(serialcode.length).to eq 6
      expect(serialcode.include?('0')).to eq false
      expect(serialcode.include?('0')).to eq false
      expect(serialcode.include?('o')).to eq false
      expect(serialcode.include?('1')).to eq false
      expect(serialcode.include?('l')).to eq false
    end
  end

  it 'should generate custom digits serialcode' do
    digit = 8
    for i in 0..1000 do
      serialcode = SerialcodeGenerator.generate(digit)
      expect(serialcode.length).to eq digit
      expect(serialcode.include?('0')).to eq false
      expect(serialcode.include?('0')).to eq false
      expect(serialcode.include?('o')).to eq false
      expect(serialcode.include?('1')).to eq false
      expect(serialcode.include?('l')).to eq false
    end
  end
end
