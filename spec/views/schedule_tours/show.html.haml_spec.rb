require 'spec_helper'

describe "schedule_tours/show" do
  before(:each) do
    @schedule_tour = assign(:schedule_tour, stub_model(ScheduleTour,
      :email => "Email",
      :first_name => "First Name",
      :last_name => "Last Name",
      :phone => "Phone",
      :ip_address => "Ip Address",
      :satisfaction => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Ip Address/)
    rendered.should match(/1/)
  end
end
