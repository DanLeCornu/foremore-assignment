class Delivery < ApplicationRecord
  # Validations
  validates :pickup_address, presence: true
  validates :delivery_address, presence: true
  validates :weight, presence: true, numericality: { greater_than: 0 }
  validates :distance, presence: true, numericality: { greater_than: 0 }
  validates :scheduled_time, presence: true

  before_save :calculate_cost

  private

  def calculate_cost
    distance_cost = distance * 0.50
    weight_cost = weight * 1.0
    if distance_cost + weight_cost > 5
      self.cost = distance_cost + weight_cost
    else
      self.cost = 5.0
    end
  end

  def self.search(search)
    if search
      where("pickup_address LIKE ? OR delivery_address LIKE ? OR driver_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      all
    end
  end
end

