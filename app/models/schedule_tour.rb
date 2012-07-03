class ScheduleTour < ActiveRecord::Base

  has_many :amenities
  attr_accessible :email, :first_name, :last_name, :phone, :satisfaction, :tour_date, :comments

  def add_amenities(params)
    AMENITIES.each do |key,value|
      amenity = Amenity.find_by_name_and_schedule_tour_id(value, self.id)
      if params[key]
        self.amenities << Amenity.new(:name => value) unless amenity
      else
        amenity.destroy if amenity
      end
    end
  end
end
