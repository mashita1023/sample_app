class UserController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user= User.find(params[:id])
  end

  def create
    @user = User.new(user_prams)
    if @user.save
      #flash[:success] = "Welcome to the Sample App!"
      #render_to @user
    else
      render 'new'
    end
  end

  private
    def user_prams
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
