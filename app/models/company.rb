class Company < ApplicationRecord
  belongs_to :category
  belongs_to :payment_method
end
