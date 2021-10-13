class Company < ApplicationRecord
  belongs_to :category
  belongs_to :payment_method
  validates :name, presence: true
  validates :name, uniqueness: true
end
