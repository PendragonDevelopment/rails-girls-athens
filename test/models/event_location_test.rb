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

require 'test_helper'

class EventLocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
