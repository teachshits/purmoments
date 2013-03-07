class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.date :date
      t.string :english_word
      t.string :french_word
      t.string :image_url
      t.timestamps
    end
  end
end
