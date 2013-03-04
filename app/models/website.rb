# == Schema Information
#
# Table name: websites
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  image_url         :string(255)
#  url               :string(255)
#  nokogiri_selector :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Website < ActiveRecord::Base
  attr_accessible :name, :url, :image_url, :nokogiri_selector
  has_and_belongs_to_many :presets
end
