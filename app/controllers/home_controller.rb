class HomeController < ApplicationController


  def index
    redirect_to websites_path if @auth.present?
  end
end