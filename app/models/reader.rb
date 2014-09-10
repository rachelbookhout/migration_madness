class Reader < ActiveRecord::Base
has_many :books, through: :checkouts

  def create_first_last_names
    readers = Reader.all
    readers.each do |reader|
      reader_name = reader.name.split
      reader.update(first_name: "#{reader_name[0]}")
      reader.update(last_name: "#{reader_name[1]}")
    end
  end

end

