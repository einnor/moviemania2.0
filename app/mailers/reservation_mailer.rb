class ReservationMailer < ActionMailer::Base
  default from: "rnafundi@gmail.com"

  def reservation_email(user)
  	@url = "http://moviemania2-herokuapp.com"

  	mail(to: @user.email, subject: "Successful Reservation")
  end
end
