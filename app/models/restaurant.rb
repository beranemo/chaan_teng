# == Schema Information
#
# Table name: restaurants
#
#  id            :integer          not null, primary key
#  name          :string
#  tel           :string
#  address       :string
#  opening_hours :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  image         :string
#

class Restaurant < ApplicationRecord
  validates :name, presence: true
  mount_uploader :image, PhotoUploader
end
