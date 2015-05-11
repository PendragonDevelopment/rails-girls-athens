# == Schema Information
#
# Table name: event_attendees
#
#  id          :integer          not null, primary key
#  event_id    :integer
#  attendee_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EventAttendee < ActiveRecord::Base
  belongs_to :event
  belongs_to :attendee
end
