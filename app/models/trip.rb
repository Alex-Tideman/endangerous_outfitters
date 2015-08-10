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



  if Rails.env.production?
    has_attached_file :image
                      # :storage => :s3,
                      # :bucket => "oregon-sale",
                      # :path => ":attachment/:id/:style.:extension",
                      # :s3_credentials => {
                      #     :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                      #     :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']

    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  else
    has_attached_file :image
                      # :storage => :s3,
                      # :s3_credentials => "#{Rails.root}/config/s3.yml",
                      # :path => ":attachment/:id/:style.:extension",
                      # :bucket => 'oregon-sale'
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  end

  def set_extras_cost
    self.extras.cost.reduce(:+)
  end

  def self.total_cost
    self.trip_cost + self.set_extras_cost
  end


end
