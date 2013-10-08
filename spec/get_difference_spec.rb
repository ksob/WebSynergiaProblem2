require File.dirname(__FILE__) + '/spec_helper.rb'
require File.join(File.dirname(__FILE__), '../get_difference.rb')

describe GetDifference do
  it "returns 0 when the sentences are identical" do
  	difference = GetDifference.get_difference('abc', 'abc')
  	expect(difference).to eq(0)
  end

  it "returns 1 when the sentences differ in one char" do
  	difference = GetDifference.get_difference('abc', 'abd')
  	expect(difference).to eq(1)
  end

  it "returns 10 when the sentences differ in 10 chars" do
  	difference = GetDifference.get_difference('bcdefghijk', 'abcdefghij')
  	expect(difference).to eq(10)
  end

  it "returns correct value when the first sentence is longer than the other" do
  	difference = GetDifference.get_difference('bcdefghijk', 'a')
  	expect(difference).to eq(10)
  end

  it "returns correct value when the second sentence is longer than the first one" do
  	difference = GetDifference.get_difference('b', 'bcdefghijk')
  	expect(difference).to eq(9)
  end
end
