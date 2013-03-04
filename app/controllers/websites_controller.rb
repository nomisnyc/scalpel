require 'open-uri'
# before_filter :check_if_admin, :except => [:show, :index]

class WebsitesController < ApplicationController
  def show
    @website = Website.find(params[:id])
    

    if params[:query].present?
      url = "http://pinterest.com/search/pins/?=#{params[:query].gsub(' ', '+')}"
    else
      url = "http://pinterest.com"
    end

    doc = Nokogiri::HTML(open(url))
    images = doc.css(@website.nokogiri_selector)
    @urls = images.map {|i| i.get_attribute('src')}

    # @urls = images.map {|i| i.get_attribute('src')}.select {|u| u.exclude?('avatar')}
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