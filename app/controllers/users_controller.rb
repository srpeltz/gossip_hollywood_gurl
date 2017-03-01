class UsersController < ApplicationController

  def index
    @user = current_user
    redirect_to login_path if !current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      session[:user_id] = @user.id.to_s
      flash[:notice] = "Sign up successful!"
      redirect_to users_path
    else
      flash.now.alert = "Invalid login credentials - try again."
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path
  end

private
  def user_params
    params.require(:user).permit(:email, :user_name, :industry, :company, :title, :password, :password_confirmation)
  end
end
