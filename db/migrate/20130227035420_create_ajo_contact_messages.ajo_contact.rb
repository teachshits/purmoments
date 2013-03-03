# This migration comes from ajo_contact (originally 20130224235018)
class CreateAjoContactMessages < ActiveRecord::Migration
  def change
    create_table :ajo_contact_messages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :subject
      t.text :message
      t.timestamps
    end
  end
end
