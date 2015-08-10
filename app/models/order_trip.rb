class OrderTrip < ActiveRecord::Base
  belongs_to :order
  belongs_to :trip
end
