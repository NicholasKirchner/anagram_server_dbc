class AddSecondIndexToWords < ActiveRecord::Migration
  def change
    add_index :dictionary_words, :anagram
  end
end
