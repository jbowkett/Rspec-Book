Given /^I am not yet playing$/ do
  #  do nothing
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(output)
  game.start
end

Then /^I should see "([^"]*)" in codebreaker$/ do |arg|
  output.messages.should include(arg)
end

class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end


def output
  @output ||= Output.new
end