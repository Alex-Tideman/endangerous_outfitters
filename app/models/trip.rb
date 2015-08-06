class Trip < ActiveRecord::Base
  validates :trip_cost, :total_cost, :name, :destination_id,
            :activity_id, presence: true
  validates :name, uniqueness: true
  belongs_to :destination
  belongs_to :activity
  has_many :trip_extras
  has_many :extras, through: :trip_extras
end
