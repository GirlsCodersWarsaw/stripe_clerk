# This migration comes from office (originally 20131224171442)
class Clerks < ActiveRecord::Migration
  def change
    create_table(:clerks) do |t|
      t.string :email,              :null => false, :default => ""
      t.boolean :admin , :default => false
      t.string :encrypted_password
      t.string :password_salt

      #this is a json attribute, so anything can be added to the class easily
      t.string  :address
      t.timestamps
    end
    add_index :clerks, :email,                :unique => true
  end
end
