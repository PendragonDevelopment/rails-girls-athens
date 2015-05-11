# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Coach < ActiveRecord::Base
	has_many :event_coaches
	has_many :events, through: :event_coaches
end
