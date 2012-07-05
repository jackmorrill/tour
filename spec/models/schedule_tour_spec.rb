require 'spec_helper'

describe ScheduleTour do

  it "should be valid on welcome" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.should be_valid
  end

  it "should be invalid with a nil email address" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.email = nil
    tour.should_not be_valid
  end

  it "should be invalid with a bad email address" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.email = "bad email address"
    tour.should_not be_valid
  end

  it "should be valid with a valid first_name" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.first_name = "Joe"
    tour.should be_valid
  end

  it "should be invalid with an invalid first_name" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.first_name = "<script>hacking code here</script>"
    tour.should_not be_valid
  end

  it "should be valid with a valid last_name" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.last_name = "Smith"
    tour.should be_valid
  end

  it "should be invalid with an invalid last_name" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.last_name = "<script>hacking code here</script>"
    tour.should_not be_valid
  end

  it "should be valid with a valid comments" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.comments = "This is a valid comment!"
    tour.should be_valid
  end

  it "should be invalid with an invalid comments" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.comments = "<script>hacking code here</script>"
    tour.should_not be_valid
  end

  it "should be valid with a valid satisfaction" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.satisfaction = 5
    tour.should be_valid
  end

  it "should be invalid with an invalid satisfaction" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.satisfaction = "<script>hacking code here</script>"
    tour.should_not be_valid
  end

  it "should be valid with a valid ip_address" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.ip_address = "[127.0.0.1]"
    tour.should be_valid
  end

  it "should be invalid with an invalid ip_address" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.comments = "<script>hacking code here</script>"
    tour.should_not be_valid
  end

  it "should be invalid with a nil ip_address" do
    tour = FactoryGirl.create(:schedule_tour)
    tour.comments = "<script>hacking code here</script>"
    tour.should_not be_valid
  end

end
