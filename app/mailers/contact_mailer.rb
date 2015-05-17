class ContactMailer < ActionMailer::Base
  require 'digest/sha2'

  default from: 'Leo James <leo@thetruthaboutmasturbation.com>'
  default "Message-ID"=>"#{Digest::SHA2.hexdigest(Time.now.to_i.to_s)}@thetruthaboutmasturbation.com"

  def sign_up(email)
    attachments['TheTruthAboutMasturbation-FreeChapter.pdf'] = File.read("#{Rails.root}/public/pdfs/TheTruthAboutMasturbation-FreeChapter.pdf")
   mail(to: email, subject: 'Chapter 1 - The Truth About Masturbation')
 end
end
