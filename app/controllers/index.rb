require_relative '../models/dictionary_word'
require 'debugger'

get '/:word' do
  @word = params[:word]
  @anagrams = DictionaryWord.anagrams(@word)
  erb :index
end

post '/' do 
  word = params[:dictionary_word]
  redirect "/#{word}"
end

get '/' do 
  erb :index
end
