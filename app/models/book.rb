class Book < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
    has_many :rentals
    has_many :users, through: :rentals
end
