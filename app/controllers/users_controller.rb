class UsersController < ApplicationController
  # before_filter :check_if_logged_in, :except => [:new, :create]
  # before_filter :check_if_admin, :only => [:index, :destroy]

  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(root_path)
    else
      render :new
    end
  end
 private
  def check_if_logged_in
    redirect_to(root_path) if @auth.nil?
  end
end
