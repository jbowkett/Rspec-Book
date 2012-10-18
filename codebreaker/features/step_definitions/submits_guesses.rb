
Given /^the secret code is "([^"]*)"$/ do |secret|
  game = Codebreaker::Game.new(output)
  game.start(secret)
end

When /^I guess "([^"]*)"$/ do |arg|
  #pending
end

Then /^the mark should be "([^"]*)"$/ do |arg|
  #pending
end