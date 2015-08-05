class Trip < ActiveRecord::Base
  validates :trip_cost, :total_cost, :name, presence: true
  belongs_to :destination
  belongs_to :activity
  has_many :trip_extras
  has_many :extras, through: :trip_extras

  def self.total_cost
    self.extras.each do |extra|
      self.update_attribute(total_cost: + extra.cost)
    end
  end

end
