class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.string :entry_code
      t.timestamps
    end
  end
end
