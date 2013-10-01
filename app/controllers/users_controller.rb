class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].permit(:name, :email, :password))
    
    if @user.save
        redirect_to users_path
    else
        render 'new'
    end
  end
         
  def index
    @users = User.all
  end
end
