require_relative '../models/dictionary_word'
require 'debugger'

get '/:word' do
  @word = params[:word]
  @anagrams = DictionaryWord.anagrams(@word)
  erb :index
end
