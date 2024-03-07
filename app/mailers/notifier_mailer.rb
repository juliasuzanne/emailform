class NotifierMailer < ApplicationMailer
  default to: "mike.grimes@ecrebo.com",
    from: "ecrebocpr@juliasuzannegrimes.com"

  def simple_message(first_name, last_name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{first_name} #{last_name}"),
      subject: "New message from EcreboCPR site",
      body: message,
    )
  end
end
