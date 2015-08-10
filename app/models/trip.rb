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

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def set_total_cost_to_trip_cost
    self.total_cost = self.trip_cost
  end

  def set_trip_image_path
    self.image_url = self.image_file_name
  end

end
