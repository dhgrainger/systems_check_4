class WordAnalysis
  def initialize(strings)
    @strings = strings
  end

  def num_word
    @words = Hash.new(0)
    num_word = @strings.split(' ')
    num_word.each do |word|
      @words[word] += 1
    end
    @words
  end

  def num_letter
    @letters = Hash.new(0)
    num_letter = @strings.split('')
    num_letter.each do |letter|
      if letter.match(/[a-zA-Z\d]/)
        @letters[letter] += 1
      end
    end
    @letters
  end

  def num_symbol
    @symbols = Hash.new(0)
    num_symbol = @strings.split('')
    num_symbol.each do |symbol|
      if symbol.match(/\W/) && symbol != ' '
        @symbols[symbol] += 1
      end
    end
    @symbols
  end

  def top_three_words
    @top_three_words = Hash.new
    @top_three_words = num_word.sort_by {|k, v| v}.pop(3).reverse
    @top_three_words
  end

  def top_three_letters
     @top_three_letters = Hash.new
     @top_three_letters = num_letter.sort_by {|k, v| v}.pop(3).reverse
     @top_three_letters
  end
end
