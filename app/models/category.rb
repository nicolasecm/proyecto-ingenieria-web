class Category < ApplicationRecord
    has_many :company
    validates :name, presence: true
    validates :name, uniqueness: true
end
