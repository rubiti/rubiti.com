class WelcomeController < ApplicationController
  
  layout 'welcome'

  def index
    @contact = Contact.new
  end

end