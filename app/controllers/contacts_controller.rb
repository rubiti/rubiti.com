class ContactsController < ApplicationController

  layout 'mailer'
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.send_email(@contact).deliver
      redirect_to root_path
    else
      redirect_to root_url, notice: 'Email enviado com sucesso!'
    end
  end

  def thanks
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end