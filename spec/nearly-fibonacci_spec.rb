require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "NearlyFibonacci" do
  it "has a value of zero on creation" do
    FibinocciCalculator.new.result.should eq(nil)
  end
end
