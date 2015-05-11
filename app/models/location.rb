# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  address     :string
#  name        :string
#  description :text
#  capacity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Location < ActiveRecord::Base
  has_many :event_locations
  has_many :events, through: :event_locations
end
