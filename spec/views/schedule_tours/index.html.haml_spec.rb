require 'spec_helper'

describe "schedule_tours/index" do
  before(:each) do
    assign(:schedule_tours, [
      stub_model(ScheduleTour,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :ip_address => "Ip Address",
        :satisfaction => 1
      ),
      stub_model(ScheduleTour,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :ip_address => "Ip Address",
        :satisfaction => 1
      )
    ])
  end

  it "renders a list of schedule_tours" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Ip Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
