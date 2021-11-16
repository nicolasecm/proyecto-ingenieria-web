class Product < ApplicationRecord
  belongs_to :company
  
  validates :name, presence: true
  
  has_one_attached :image_product
end
