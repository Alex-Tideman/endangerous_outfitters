class Extra < ActiveRecord::Base
  has_many :trip_extras
  has_many :trips, through: :trip_extras

  validates :cost, :name, :description, presence: true
end
