class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |table|
      table.string :title, null: false
      table.string :isbn, null: false

      table.timestamps
    end
  end
end
