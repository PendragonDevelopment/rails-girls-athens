# == Schema Information
#
# Table name: event_locations
#
#  id          :integer          not null, primary key
#  event_id    :integer
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EventLocation < ActiveRecord::Base
  belongs_to :event
  belongs_to :location
end
