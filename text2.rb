# initializes all counter values
count_hash = Hash.new(0)

File.open('lorem.txt').each do |l|
  count_hash[:character_count] += l.length
  count_hash[:character_non_whitespace_count] += l.scan(/\S/).length
  count_hash[:line_count] += 1
  count_hash[:word_count] += l.split(' ').length
  count_hash[:sentence_count] += l.split('.').length
  count_hash[:paragraph_count] += l.split(/\n\n/).length
end

count_hash[:average_words] = count_hash[:word_count] / count_hash[:sentence_count]
count_hash[:average_sentence] = count_hash[:sentence_count] / count_hash[:paragraph_count]

count_hash.each do |x,y|
  puts "#{x.to_s.gsub(/_/, ' ')}: #{y}"
end
