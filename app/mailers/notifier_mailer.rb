class NotifierMailer < ApplicationMailer
  default to: "sara@growthtalentsolutions.biz",
    from: "contactform@growthtalentsolutions.biz"

  def simple_message(first_name, last_name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{first_name} #{last_name}"),
      subject: "New contact form message",
      body: message,
    )
  end
end
