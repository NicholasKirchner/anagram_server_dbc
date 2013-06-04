class AddAnagramToTable < ActiveRecord::Migration
  def change
    add_column :dictionary_words, :anagram, :string
  end
end
