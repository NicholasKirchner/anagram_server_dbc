require_relative '../models/dictionary_word'
require 'debugger'

# get '/:word' do
#   @word = params[:dictionary_word]
#   @anagrams = DictionaryWord.anagrams(@word)
#   @anagrams
# end

post '/' do 
  @word = params[:dictionary_word]
  @anagrams = DictionaryWord.anagrams(@word)
  @anagrams.to_json
end

get '/' do 
  erb :index
end
