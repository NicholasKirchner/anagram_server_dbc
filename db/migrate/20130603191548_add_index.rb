class AddIndex < ActiveRecord::Migration
  def change
    add_index :dictionary_words, :word
  end
end
