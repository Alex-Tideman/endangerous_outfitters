class TripExtra < ActiveRecord::Base
  belongs_to :extra
  belongs_to :trip
end
