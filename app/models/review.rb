class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, numericality: {less_than: 6, greater_than_or_equal_to: 0, only_integer: true }
end
