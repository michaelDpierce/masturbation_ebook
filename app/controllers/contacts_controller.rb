class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
      redirect_to root_url
      flash[:success] = 'We will be in touch soon! Thank you.'
      Thread.new do
        ContactMailer.contact_email(@contact).deliver
      end
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end
end
