class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { in: rand(1..5), message: "%{value} is not a valid size" }
end
