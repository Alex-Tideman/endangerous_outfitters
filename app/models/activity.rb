class Activity < ActiveRecord::Base
  validates :name, :description , presence: true
  validates :name, uniqueness: true
  has_many :trips
  has_many :destinations, through: :trips
end
