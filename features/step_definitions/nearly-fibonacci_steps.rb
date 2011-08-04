Before do
  @calc = FibinocciCalculator.new
end

Given /I have entered ([-+]?\d+) into the calculator/ do |n|
  @calc.limit = n
end

When /^I press calculate$/ do
  @calc.calculate
end

Then /^the result should be ([-+]?\d+)$/ do |arg1|
  @calc.result
end



