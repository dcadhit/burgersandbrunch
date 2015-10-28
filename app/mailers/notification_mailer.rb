class NotificationMailer < ActionMailer::Base
  default from: "no-reply@burgersbrunchapp.com"

  def comment_added
  	mail(to: "itestemailnotifications@gmail.com",
  		 subject: "A comment has been added to your place")
  end
end
