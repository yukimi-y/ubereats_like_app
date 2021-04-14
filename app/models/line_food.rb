class LineFood < ApplicationRecord
  belongs_to :food
  belongs_to :restaurant
  belongs_to :order, optional: ture

  validates :count, numericality: { greater_than: 0 }

  scope :active, -> { where(active: true) }
  scope :other_restaurant, -> (picked_restaurant_id) { where.not(restaurant_id :picked_restaurant_id) }

  def total_amount
    food_price * count
  end
end