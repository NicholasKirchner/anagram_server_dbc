require_relative '../app/models/dictionary_word'

File.open("#{APP_ROOT}/words.txt").readlines.each do |word|
  DictionaryWord.create(word: word.chomp)
end
