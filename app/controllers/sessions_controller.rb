class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:login][:email].downcase)

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      flash[:notice] = "Logged In!"
      redirect_to root_path
    else
      flash.now[:notice] = "Invalid Email/Password. Please Try Again."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: "Logged Out!"
  end

end
