class EnquiryMailer < ActionMailer::Base

  def enquiry_mail(user)
  	@url = "http://moviemania2-herokuapp.com"
  	@head = user.head
  	@body = user.body

  	mail(to: "rnafundi@gmail.com", subject: "Enquiry", from: user.email)
  end

end
