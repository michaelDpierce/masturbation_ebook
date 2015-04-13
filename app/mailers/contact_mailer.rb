class ContactMailer < ActionMailer::Base
  default from: "me@michaeldeanpierce.com"

  def contact_email(contact)
   @contact = contact
   mail(to: 'matchmike1313@gmail.com', subject: @contact.subject)
 end
end
