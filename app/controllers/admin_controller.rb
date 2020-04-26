class AdminController < ApplicationController
  
  before_action :authorize

  layout 'admin'

  def index
  end

end
