class Marker
  def initialize(secret, guess)
    @secret = secret
    @guess = guess
  end

  def exact_match_count()
    (0..3).inject(0) do |current_count, index|
      current_count += (exact_match?(index) ? 1 :0)
    end
  end

  def number_match_count()
    (0..3).inject(0) do |current_count, index|
      current_count += (number_match?(index) ? 1 :0)
    end
  end


  def number_match?(index)
    (@secret.include? @guess[index]) && !exact_match?(index)
  end


  def exact_match?(index)
    @guess[index] == @secret[index]
  end
end
