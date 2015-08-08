class Review < ActiveRecord::Base
  validates :name, :content, :occupation, presence: true
end
