class SessionsController < ApplicationController
  expose(:user) { User.find_by_email(params[:email]) }

  def create
    if user && user.authenticate(params[:password])
      sign_in(user, false)
      redirect_to :dashboard
    else
      flash.now[:sign_in_error] = "Your email or password are incorrect"
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to :root, notice: "You are now signed out"
  end

end
