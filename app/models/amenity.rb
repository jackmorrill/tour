class Amenity < ActiveRecord::Base

  belongs_to :schedule_tours

  attr_accessible :name

  validates :name, :presence => true

end
