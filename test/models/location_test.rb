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

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
