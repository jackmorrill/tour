class TourMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_tour_email(user)
    @user = user
    @url  = "http://tour.example.com"
    mail(:to => TOUR_ADMIN_EMAIL_ADDRESS, :subject => "A new Tour has been scheduled")
  end

end
