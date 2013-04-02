require 'open-uri'
# before_filter :check_if_admin, :except => [:show, :index]

class WebsitesController < ApplicationController
  def shows
    @websites = Website.find(params[:ids])
    @images = @websites.map{|i| i.image_scrape}.flatten
    @links = @websites.map{|i| i.link_scrape}.flatten
  end

  def index
    @websites = Website.order(:name)
  end

  def new
    @website = Website.new
  end
  def create
    @website = Website.new(params[:website])
    if @website.save
      redirect_to(websites_path)
    else
      render :new
    end
  end
  def edit
    @website = Website.find(params[:id])
    render :new
  end
  def update
    @website = Website.find(params[:id])
    if @website.update_attributes(params[:website])
      redirect_to(websites_path)
    else
      render :new
    end
  end
end