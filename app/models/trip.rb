class Trip < ActiveRecord::Base
  belongs_to :destination
  belongs_to :activity
end
