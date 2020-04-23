class UsersController < ApplicationController

  layout 'admin'

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path, notice: "Logado com sucesso."
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :admin, :superadmin, :email, :password, :password_confirmation)
  end

end