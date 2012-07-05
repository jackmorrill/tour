class ScheduleTour < ActiveRecord::Base

  attr_accessible :email, :first_name, :last_name, :phone, :satisfaction, :tour_date, :comments

  has_many :amenities

  validates :email, :presence => true
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email format" }
  validates :first_name, :last_name, :format => { :with => /\A[a-z]+\Z/i, :message => "Only letters are allowed in names" }, :allow_nil => true
  validates :comments, :format => { :with => /\A[a-z0-9\.\,\;\:\"\'\&\%\$\@\!\=\?]+/i, :message => "Only letters, numbers, and normal punction are allowed in comments" }, :allow_nil => true
  validates :satisfaction, :numericality => { :only_integer => true }, :allow_nil => true
  validates :ip_address, :presence => true
  
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