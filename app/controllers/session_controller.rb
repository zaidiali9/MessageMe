class SessionController < ApplicationController
  before_action :logged_in_redirect, only: [:login, :create]
  def login #new
  end

  def create
    user=User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id]=user.id
      flash[:success] = "You Have Logged In"
      redirect_to root_path
    else
      flash[:danger] = "Invalid Credentials"
      redirect_to login_path
    end

  end

  def destroy
    session[:user_id]=nil
    flash[:danger] = "You Have Logged Out"
    redirect_to login_path
  end

  private
  def logged_in_redirect
    if logged_in

      flash[:warning] = "You Are Already Logged In"
      redirect_to root_path
    end
  end
end
