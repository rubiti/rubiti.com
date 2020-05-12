class WelcomeController < ApplicationController
  
  layout 'welcome'

  def index
    @contact = Contact.new
    @informations = Information.all
  end

end