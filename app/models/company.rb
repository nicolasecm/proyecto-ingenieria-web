class Company < ApplicationRecord
  belongs_to :category
  belongs_to :payment_method
  has_many :product

  validates :name, presence: true
  validates :name, uniqueness: true
end
