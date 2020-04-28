class WelcomeController < ApplicationController
  
  layout 'welcome'

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      ContactMailer.send_email(@contact).deliver
      render :thanks
    else
      redirect_to root_url, notice: 'Email enviado com sucesso!'
    end
  end

  def thanks
  end

end