# == Schema Information
#
# Table name: sponsors
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  url         :string
#  twitter     :string
#  facebook    :string
#  linkedin    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SponsorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
