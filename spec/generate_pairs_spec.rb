require 'spec_helper'
require_relative '../generate_pairs.rb'

describe GeneratePairs do
  describe "#generate" do
    it 'returns an array of strings' do
      GeneratePairs.generate.map(&:class).uniq.should == [String]
    end
    it 'returns an array of size 2' do
      GeneratePairs.generate.size.should == 2
    end
    it 'returns an array of unique elements' do
      values = GeneratePairs.generate
      values.size.should == values.uniq.size
    end
    it 'if anchor exists, then it is returned in the collection' do
      anchor = GeneratePairs.get_devs.sample
      values = GeneratePairs.generate anchor
      values.include?(anchor).should == true 
    end
  end
end
