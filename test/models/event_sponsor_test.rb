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

require 'test_helper'

class EventSponsorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
