require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ScheduleToursController do

  # This should return the minimal set of attributes required to create a valid
  # ScheduleTour. As you add validations to ScheduleTour, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { :email => 'user@example.com' }
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ScheduleToursController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET show" do
    it "assigns the requested schedule_tour as @schedule_tour" do
      schedule_tour = ScheduleTour.create! valid_attributes
      get :show, {:id => schedule_tour.to_param}, valid_session
      assigns(:schedule_tour).should eq(schedule_tour)
    end
  end

  describe "GET welcome" do
    it "assigns a new schedule_tour as @schedule_tour" do
      get :welcome, {}, valid_session
      assigns(:schedule_tour).should be_a_new(ScheduleTour)
    end
  end

  describe "GET edit" do
    it "assigns the requested schedule_tour as @schedule_tour" do
      schedule_tour = ScheduleTour.create! valid_attributes
      get :edit, {:id => schedule_tour.to_param}, valid_session
      assigns(:schedule_tour).should eq(schedule_tour)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ScheduleTour" do
        expect {
          post :create, {:schedule_tour => valid_attributes}, valid_session
        }.to change(ScheduleTour, :count).by(1)
      end

      it "assigns a newly created schedule_tour as @schedule_tour" do
        post :create, {:schedule_tour => valid_attributes}, valid_session
        assigns(:schedule_tour).should be_a(ScheduleTour)
        assigns(:schedule_tour).should be_persisted
      end

      it "redirects to the created schedule_tour" do
        post :create, {:schedule_tour => valid_attributes}, valid_session
        response.should redirect_to(ScheduleTour.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved schedule_tour as @schedule_tour" do
        # Trigger the behavior that occurs when invalid params are submitted
        ScheduleTour.any_instance.stub(:save).and_return(false)
        post :create, {:schedule_tour => {}}, valid_session
        assigns(:schedule_tour).should be_a_new(ScheduleTour)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ScheduleTour.any_instance.stub(:save).and_return(false)
        post :create, {:schedule_tour => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested schedule_tour" do
        schedule_tour = ScheduleTour.create! valid_attributes
        # Assuming there are no other schedule_tours in the database, this
        # specifies that the ScheduleTour created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ScheduleTour.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => schedule_tour.to_param, :schedule_tour => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested schedule_tour as @schedule_tour" do
        schedule_tour = ScheduleTour.create! valid_attributes
        put :update, {:id => schedule_tour.to_param, :schedule_tour => valid_attributes}, valid_session
        assigns(:schedule_tour).should eq(schedule_tour)
      end

      it "redirects to the schedule_tour" do
        schedule_tour = ScheduleTour.create! valid_attributes
        put :update, {:id => schedule_tour.to_param, :schedule_tour => valid_attributes}, valid_session
        response.should redirect_to(schedule_tour)
      end
    end

    describe "with invalid params" do
      it "assigns the schedule_tour as @schedule_tour" do
        schedule_tour = ScheduleTour.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ScheduleTour.any_instance.stub(:save).and_return(false)
        put :update, {:id => schedule_tour.to_param, :schedule_tour => {}}, valid_session
        assigns(:schedule_tour).should eq(schedule_tour)
      end

      it "re-renders the 'edit' template" do
        schedule_tour = ScheduleTour.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ScheduleTour.any_instance.stub(:save).and_return(false)
        put :update, {:id => schedule_tour.to_param, :schedule_tour => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested schedule_tour" do
      schedule_tour = ScheduleTour.create! valid_attributes
      expect {
        delete :destroy, {:id => schedule_tour.to_param}, valid_session
      }.to change(ScheduleTour, :count).by(-1)
    end

    it "redirects to the schedule_tours list" do
      schedule_tour = ScheduleTour.create! valid_attributes
      delete :destroy, {:id => schedule_tour.to_param}, valid_session
      response.should redirect_to(schedule_tours_url)
    end
  end

end
