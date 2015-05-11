# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ActiveRecord::Base
	has_many :event_coaches
	has_many :coaches, through: :event_coaches
  has_many :event_locations
  has_many :locations, through: :event_locations
end
