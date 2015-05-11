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

require 'test_helper'

class EventCoachTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
