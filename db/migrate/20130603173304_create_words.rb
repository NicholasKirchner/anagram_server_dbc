class CreateWords < ActiveRecord::Migration
  def change
    create_table :dictionary_words do |t|
      t.string :word
    end
  end
end
