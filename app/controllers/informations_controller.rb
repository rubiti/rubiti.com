class InformationsController < ApplicationController

  layout 'admin'

  before_action :authorize, only: [:index]

  def index
    @informations = Information.all
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to informations_path
    else
      render 'edit'
    end
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)

    @information.save
    redirect_to informations_path
  end

  private

  def information_params
    params.require(:information).permit(:name, :short_description, :description, :phone, :email, :site, :location, :facebook, :linkedin, :github, :copyright, :copyright_short)
  end

end