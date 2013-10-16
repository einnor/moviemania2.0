class EnquiryMailer < ActionMailer::Base
  default from: sender

  def enquiry_mail(user)
  	@url = "http://moviemania2-herokuapp.com"

  	mail(
  		to: "rnafundi@gmail.com"
  		subject: "Enquiry"
  	)
  end

  def sender(user)
  	user.email
  end
end
