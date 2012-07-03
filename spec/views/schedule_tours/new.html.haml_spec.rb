require 'spec_helper'

describe "schedule_tours/new" do
  before(:each) do
    assign(:schedule_tour, stub_model(ScheduleTour,
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :ip_address => "MyString",
      :satisfaction => 1
    ).as_new_record)
  end

  it "renders new schedule_tour form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedule_tours_path, :method => "post" do
      assert_select "input#schedule_tour_email", :name => "schedule_tour[email]"
      assert_select "input#schedule_tour_first_name", :name => "schedule_tour[first_name]"
      assert_select "input#schedule_tour_last_name", :name => "schedule_tour[last_name]"
      assert_select "input#schedule_tour_phone", :name => "schedule_tour[phone]"
      assert_select "input#schedule_tour_ip_address", :name => "schedule_tour[ip_address]"
      assert_select "input#schedule_tour_satisfaction", :name => "schedule_tour[satisfaction]"
    end
  end
end
