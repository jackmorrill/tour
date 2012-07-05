class ScheduleToursController < ApplicationController

  before_filter :force_ssl, :except => [ :signup, :thank_you ]

  respond_to :html, :json

  def welcome
    @schedule_tour = ScheduleTour.new
    respond_with @schedule_tour
  end

  def create_tour
    @schedule_tour = ScheduleTour.new(params[:schedule_tour])
    @schedule_tour.ip_address = request.ip
    if @schedule_tour.save
      UserMailer.signup_email(@schedule_tour).deliver
      redirect_to thank_you_path(@schedule_tour.id)
    else
      logger.debug("@schedule_tour.errors => #{@schedule_tour.errors.messages}")
      flash[:error] = "Please enter a valid email address"
      redirect_to :welcome
    end
  end

  def thank_you
    @schedule_tour = ScheduleTour.find(params[:id])
    respond_with @schedule_tour
  end

  def signup
    @schedule_tour = ScheduleTour.find(params[:id])
    redirect_to :tour and return true if @schedule_tour.tour_date
    respond_with @schedule_tour
  end

  def create_signup
    if @schedule_tour = ScheduleTour.find(params[:id])
      @schedule_tour.ip_address = request.ip
      if @schedule_tour.update_attributes(params[:schedule_tour])
        redirect_to extra_details_path(@schedule_tour.id)
      else
        flash[:error] = "The following errors prevented your information from being saved"
       redirect_to :signup
      end
    end
  end

  def extra_details
    @schedule_tour = ScheduleTour.find(params[:id])
    respond_with @schedule_tour
  end

  def create_extra_details
    if @schedule_tour = ScheduleTour.find(params[:id])
      @schedule_tour.ip_address = request.ip
      if @schedule_tour.update_attributes(params[:schedule_tour])
        @schedule_tour.add_amenities(params)
        UserMailer.tour_email(@schedule_tour).deliver
        TourMailer.new_tour_email(@schedule_tour).deliver
        redirect_to success_path(@schedule_tour.id)
      else
        flash[:error] = "The following errors prevented your information from being saved"
        redirect_to :create_extra_details
      end
    end
  end

  def rate
    if @schedule_tour = ScheduleTour.find(params[:id])
      @schedule_tour.update_attributes(params[:schedule_tour])
      render :goodby
    end
  end

  def success
    @schedule_tour = ScheduleTour.find(params[:id])
    logger.debug("tour = #{@schedule_tour.inspect}")
    respond_with @schedule_tour
  end
  
  def tour
    @schedule_tour = ScheduleTour.find(params[:id])
    if @schedule_tour
      @user = @schedule_tour
      respond_with @schedule_tour
    else
      logger.warn("Tour for ID => #{params[:id]} was not found")
    end
  end
end
