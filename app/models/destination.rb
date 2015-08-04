class Destination < ActiveRecord::Base
  validates :continent, :description , presence: true
  validates :continent, uniqueness: true
  has_many :trips
  has_many :activities, through: :trips
end
