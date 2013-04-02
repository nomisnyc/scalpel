class SessionController < ApplicationController
  def new

  end
  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      @websites = Website.all
      redirect_to websites_path
    else
      flash[:notice] = 'Incorrect login, try again.'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end
end
