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
    total_match_count - exact_match_count
  end

  def total_match_count
    secret = @secret.split('')
    @guess.split('').inject(0) do |current_count, guess_char|
      current_count += (delete_first(secret, guess_char) ? 1 : 0)
    end
  end

  def delete_first(code, char)
    code.delete_at(code.index(char)) if code.index(char)
  end


  def exact_match?(index)
    @guess[index] == @secret[index]
  end
end
