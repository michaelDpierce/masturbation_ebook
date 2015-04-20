class ContactMailer < ActionMailer::Base
  default from: 'kris@thetruthaboutmasturbation.com'

  def contact_email(contact)
   @contact = contact
   attachments['the_truth_about_masturbation_ebook_chp_1.pdf'] = File.read("#{Rails.root}/public/pdfs/the_truth_about_masturbation_ebook_chp_1.pdf")
   mail(to: @contact.email, subject: 'Chapter 1 - The Truth About Masturbation')
 end
end
