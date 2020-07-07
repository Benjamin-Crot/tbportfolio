class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    redirect_to new_contact_path
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactsMailer.general_message(@contact).deliver
      redirect_to :root, notice: "Votre message a bien été envoyé"
      # flash.now[:notice] = "We have exactly books available."
    else
      render :new
    end
  end

  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
