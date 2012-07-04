class UserMailer < ActionMailer::Base
  default from: "tour@example.com"

  def signup_email(user)
    @user = user
    @url  = "http://localhost:3456/schedule_tours/#{@user.id}/signup"
    mail(:to => user.email, :subject => "Follow the link below to schedule your Tour")
  end

  def tour_email(user)
    @user = user
    @amenities = ScheduleTour.find(user.id).amenities
    @url  = "http://localhost:3456/schedule_tours/#{@user.id}/tour"
    mail(:to => user.email, :subject => "Your Tour has been successfully scheduled")
  end

end
