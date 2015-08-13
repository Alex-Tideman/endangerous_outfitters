class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_trips
  has_many :trips, through: :order_trips

  attr_accessor :cart

  enum status: %w(Ordered Paid Cancelled Completed)
  scope :status, -> (status) { where status: status }

  def sum_total_cost
    self.order_trips.map do |order_trip|
      order_trip.trip.total_cost * order_trip.quantity
    end.reduce(:+)
  end
end
