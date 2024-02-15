class NotifierMailer < ApplicationMailer
  default to: "julia.s.grimes@gmail.com",
    from: "julia@juliasuzannegrimes.com"

  def simple_message(first_name, last_name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{first_name} #{last_name}"),
      subject: "New contact form message",
      body: message,
    )
  end
end
