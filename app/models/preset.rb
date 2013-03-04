# == Schema Information
#
# Table name: presets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Preset < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user, :inverse_of => :presets
  has_and_belongs_to_many :websites
end
