class Order < ActiveRecord::Base
  # has_many :order_trips
  belongs_to :user
  has_many :order_trips
  has_many :trips, through: :order_trips

  attr_accessor :cart
  # , through: :order_trips

  # attr_reader :cart_trips

  # def initialize(cart_trips)
  #   @cart_trips = cart_trips
  #
  # end

  # an order has order_trips
  # def order_trips
  #   cart_trips.map do |k, v|
  #     byebug
  #     # user = User.find()
  #     Order.create(trip_id: k, quantity: v)
  #   end
  # end
end
