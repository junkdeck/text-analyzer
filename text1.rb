class TextAnalyzer
  # class-based and with tons of functions. only use with small files as File#read loads entire file into memory.

  def initialize(text)
    @text = text
  end

  def get_character_count
    return @text.split('').length
  end

  def get_non_whitespace_character_count
    return @text.scan(/\S/).length
  end

  def get_line_count
    return @text.lines.length
  end

  def get_word_count
    return @text.split(' ').length
  end

  def get_sentence_count
    return @text.split('.').length
  end

  def get_paragraph_count
    return @text.split(/\n\n/).length
  end

  def get_average_words
    return get_word_count / get_sentence_count
  end

  def get_average_sentences
    return get_sentence_count / get_paragraph_count
  end
end
