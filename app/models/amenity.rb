class Amenity < ActiveRecord::Base

  belongs_to :schedule_tours

  attr_accessible :name

  validates :presence
end
