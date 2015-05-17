class ContactsController < ApplicationController
  require 'mailgun'

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    puts 'mailer'
    if @contact.save
      Thread.new do
        ContactMailer.sign_up(@contact.email).deliver
      end
      redirect_to root_url
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end
end
