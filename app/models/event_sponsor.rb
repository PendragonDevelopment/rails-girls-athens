# == Schema Information
#
# Table name: event_sponsors
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  sponsor_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EventSponsor < ActiveRecord::Base
  belongs_to :event
  belongs_to :sponsor
end
