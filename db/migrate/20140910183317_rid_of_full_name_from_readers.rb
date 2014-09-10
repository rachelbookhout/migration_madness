class RidOfFullNameFromReaders < ActiveRecord::Migration
  def up
  remove_column :readers, :name
  end

  def down
  add_column :readers, :name, :string
  end
end
