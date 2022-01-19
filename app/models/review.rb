class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5, message: "%{value} is not a valid size" }
  belongs_to :restaurant
end
