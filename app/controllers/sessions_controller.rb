class SessionsController < ApplicationController

  def new
  end

def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
      sign_in user
      redirect_back_or user
      # Sign the user in and redirect to the user's show page.
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
  end
end

  def destroy
    sign_out if signed_in?
    redirect_to root_url
  end
end
