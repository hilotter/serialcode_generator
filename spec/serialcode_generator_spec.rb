require 'spec_helper'

describe SerialcodeGenerator do
  it 'should have a version number' do
    SerialcodeGenerator::VERSION.should_not be_nil
  end

  it 'should raise a error message' do
    e = nil
    begin
      SerialcodeGenerator.generate('test')
    rescue => e
      e.should be_kind_of RuntimeError
    end
    e.should_not be_nil
    e.message.should =~ /Digit is not integer/
  end

  it 'should generate 6 digits serialcode' do
    for i in 0..1000 do
      serialcode = SerialcodeGenerator.generate
      serialcode.length.should == 6
      serialcode.include?('0').should be_false
      serialcode.include?('0').should be_false
      serialcode.include?('o').should be_false
      serialcode.include?('1').should be_false
      serialcode.include?('l').should be_false
    end
  end

  it 'should generate custom digits serialcode' do
    digit = 8
    for i in 0..1000 do
      serialcode = SerialcodeGenerator.generate(digit)
      serialcode.length.should == digit
      serialcode.include?('0').should be_false
      serialcode.include?('0').should be_false
      serialcode.include?('o').should be_false
      serialcode.include?('1').should be_false
      serialcode.include?('l').should be_false
    end
  end
end
