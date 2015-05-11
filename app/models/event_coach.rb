# == Schema Information
#
# Table name: event_coaches
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  coach_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventCoach < ActiveRecord::Base
	belongs_to :event
	belongs_to :coach
end
