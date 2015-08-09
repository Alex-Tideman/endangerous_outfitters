class Trip < ActiveRecord::Base
  validates :trip_cost, :total_cost, :name, :destination_id,
            :activity_id, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 25 }
  belongs_to :destination
  belongs_to :activity
  has_many :trip_extras
  has_many :extras, through: :trip_extras
  belongs_to :user
  belongs_to :orders
  has_many :order_trips
  has_many :orders, through: :order_trips

  def set_total_cost_to_trip_cost
    self.total_cost = params[:trip_cost]
  end

end
