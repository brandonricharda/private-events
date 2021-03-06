class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user
      session[:user_id] = user.id
      session[:username] = user.name
      redirect_to user, notice: "You have successfully logged in."
    else
      flash.now[:notice] = "Your login is incorrect."
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to events_path, notice: "You have successfully signed out."
  end
end
