class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome back #{@user.username}!"
      redirect_to root_path
    else
      flash[:error] = "Invalid input - Please try creating user again"
      render :new
    end
  end

  def show
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end