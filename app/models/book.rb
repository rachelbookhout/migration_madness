class Book < ActiveRecord::Base
 validates_numericality_of :ranking, :less_than_or_equal_to=>100
 has_many :checkouts
 has_many :categorizations
 has_many :categories, through: :categorizations
 has_many :readers,through: :checkouts
end
