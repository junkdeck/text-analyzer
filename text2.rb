class TextAnalyzer
  attr_reader :count_hash

  def initialize(file)
    # resets the counters and stores it in an easily-accessible hash

    @count_hash = {
      character_count:0,
      character_non_whitespace_count:0,
      line_count:0,
      word_count:0,
      sentence_count:0,
      paragraph_count:0,
      average_words:0,
      average_sentence:0
    }

  end

end
