class CreateReadersTable < ActiveRecord::Migration
  def change
   create_table :readers do |table|
      table.string :name, null: false
      table.string :email, null: false
      table.string :phone_number, null:false
      table.timestamps
    end
  end
end
