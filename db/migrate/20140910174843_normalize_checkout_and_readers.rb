class NormalizeCheckoutAndReaders < ActiveRecord::Migration
  def up
    reader_id = Reader.last.id
    add_column :checkouts, :reader_id, :integer
    Checkout.all. each do |checkout|
      checkout.reader_id = reader_id
      checkout.save
    end
    change_column :checkouts, :reader_id, :integer, null:false
  end

  def down
    remove_column :checkouts, :reader_id
  end

end
