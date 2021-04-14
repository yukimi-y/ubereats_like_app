class Restaurant < ApplicationRecord
  has_many :foods
  has_many :line_foods, through: :foods
  belongs_to :order, optional: true

  validates :name, :fee, :time_required, presemce: true
  validates :name, length: { miaximum: 30 }
  validates :fee, numericality: { greater_than: 0 }
end