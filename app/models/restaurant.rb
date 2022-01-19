class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :rating, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian), message: "%{value} is not a valid category" }
  belongs_to :review
end
