class Reader < ActiveRecord::Base
has_many :books, through: :checkouts
end

