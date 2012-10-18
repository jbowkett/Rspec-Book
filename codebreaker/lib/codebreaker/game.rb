module Codebreaker
  class Game

    def initialize(output)
      @output = output
    end

    def start(secret)
       @output.puts "Welcome to codebreaker!"
       @output.puts "Enter guess:"

    end

  end
end


