class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:sessions][:email])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      flash[:success] = "You are logged in"
      redirect_to user_path(user)
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]= "you have logged out "
    redirect_to root_path
  end
end