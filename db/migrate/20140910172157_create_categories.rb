class CreateCategories < ActiveRecord::Migration
  def change
     create_table :categories do |table|
        table.string :title, null: false

        table.timestamps
     end
  end
end
