require 'debugger'
class DictionaryWord < ActiveRecord::Base
  # Remember to create a migration!

  # def self.anagrams(word)
  #   letters = word.downcase.split('').sort
  #   results = []
  #   self.find_each do |other_word|
  #     results << other_word if letters == other_word.word.downcase.split('').sort
  #   end
  #   results
  # end

  def self.anagrams(word)
    letters = word.downcase.split('').sort
    results = []
    self.all.each do |other_word|
      results << other_word if letters == other_word.word.downcase.split('').sort
    end
    results
  end
end
