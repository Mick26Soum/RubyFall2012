Given /^I have Pirate Translator$/ do
  @pirate = Pirate.new
end

Given /^I say "(.*?)"$/ do |arg1|
  @pirate.greetings = arg1
end

When /^I hit translate$/ do
   @message = @pirate.translate
end

Then /^it prints out 'Ahoh Matey'$/ do
  @message[0].should eql "Ahoh Matey"
end

Then /^it prints out 'Shiber Me Timbers Your Scurvey Dogs!!'$/ do
  @message[1].should eql "Shiber Me Timbers Your Scurvey Dogs!!"
end
