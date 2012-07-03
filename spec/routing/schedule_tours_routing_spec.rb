require "spec_helper"

describe ScheduleToursController do
  describe "routing" do

    it "routes to #index" do
      get("/schedule_tours").should route_to("schedule_tours#index")
    end

    it "routes to #new" do
      get("/schedule_tours/new").should route_to("schedule_tours#new")
    end

    it "routes to #show" do
      get("/schedule_tours/1").should route_to("schedule_tours#show", :id => "1")
    end

    it "routes to #edit" do
      get("/schedule_tours/1/edit").should route_to("schedule_tours#edit", :id => "1")
    end

    it "routes to #create" do
      post("/schedule_tours").should route_to("schedule_tours#create")
    end

    it "routes to #update" do
      put("/schedule_tours/1").should route_to("schedule_tours#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/schedule_tours/1").should route_to("schedule_tours#destroy", :id => "1")
    end

  end
end
