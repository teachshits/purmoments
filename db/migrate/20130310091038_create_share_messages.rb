class CreateShareMessages < ActiveRecord::Migration
  def change
    create_table :share_messages do |t|

      t.timestamps
    end
  end
end
