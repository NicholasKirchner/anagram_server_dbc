require 'debugger'
class DictionaryWord < ActiveRecord::Base
  
  before_save :generate_anagram

  def self.anagrams(word)
    letters = word.downcase.split('').sort.join
    results = self.find(:all, :conditions => ["anagram = ?", letters])
    results
  end


  private

  def generate_anagram
    self.anagram = self.word.split('').sort.join
  end
end
