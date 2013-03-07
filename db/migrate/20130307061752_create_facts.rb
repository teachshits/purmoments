class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.text :english_fact
      t.text :french_fact
      t.string :sources
      t.timestamps
    end
  end
end
