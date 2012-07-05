require 'spec_helper'

describe Amenity do

  it "should be valid on new" do
    amenity = FactoryGirl.create(:amenity)
    amenity.should be_valid
  end

  it "should be invalid with a nil name" do
    amenity = FactoryGirl.create(:amenity)
    amenity.name = nil
    amenity.should_not be_valid
  end

end
