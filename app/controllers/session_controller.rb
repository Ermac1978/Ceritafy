class SessionController < ApplicationController
  skip_before_action :authenticate, only: [:index, :signin, :signup]

  def index
  end

  def signin
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "You successfully signed in!"
    else
      session[:user_id] = nil
      flash[:error] = "Sign in failed!"
    end
    redirect_to stories_path
  end

  def signout
    session[:user_id] = nil
    flash[:warning] = "Your are now signed out"
    redirect_to root_path
  end

  def signup
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:notice] = "Thank you for signing up!"
      UserMailer.welcome_email(user).deliver
    else
      flash[:error] = "Sign up failed!"
    end
    redirect_to stories_path
  end
end
