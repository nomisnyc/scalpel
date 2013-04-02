# == Schema Information
#
# Table name: websites
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  image_url              :string(255)
#  url                    :string(255)
#  nokogiri_selector      :string(255)
#  nokogiri_link_selector :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Website < ActiveRecord::Base
  attr_accessible :name, :url, :image_url, :nokogiri_selector, :nokogiri_link_selector
  has_and_belongs_to_many :presets
  require 'open-uri'

  def image_scrape
    doc = Nokogiri::HTML(open(self.url)) #this opens the url attr within its one instance and grabs all the html data and allows nokogiri to parse it.
    images = doc.css(self.nokogiri_selector)
    image_urls = images.map {|i| i.get_attribute('src')}
    image_urls #this returns the result of the function which is an array of src of the images(the location url)
  end

  def link_scrape
    doc = Nokogiri::HTML(open(self.url))
    links = doc.css(self.nokogiri_link_selector)
    link_urls = links.map {|l| l.get_attribute('href')}
    link_urls
  end
end
# {:image => i.get_attribute('src'), :link => i.get_attribute('href')}
