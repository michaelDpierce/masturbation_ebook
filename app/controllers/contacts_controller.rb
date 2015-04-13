class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_url
      flash[:success] = "Submission was successfull."
      ContactMailer.contact_email(@contact).deliver
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message, :subject)
  end
end
