module Codebreaker
  class Game

    def initialize(output)
      @output = output
    end


    def start(secret)
      @secret = secret
      @output.puts "Welcome to codebreaker!"
      @output.puts "Enter guess:"
    end


    def guess(guess)

      number_match_count = 0
      exact_match_count = 0

      (0..3).map do |index|
        if exact_match?(guess, index)
          exact_match_count += 1
        end

      end
      (0..3).map do |index|
        if number_match?(guess, index)
          number_match_count += 1
        end
      end
      @output.puts '+' * exact_match_count + '-' * number_match_count
    end


    def number_match?(guess, index)
      (@secret.include? guess[index]) && !exact_match?(guess, index)
    end


    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

  end
end


