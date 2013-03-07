class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :facebook_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :location
      t.integer :challenge_id
      t.string :entry_code
      t.string :source
      t.timestamps
    end
  end
end
