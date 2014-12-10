# == Schema Information
#
# Table name: impressions
#
#  id                  :integer          not null, primary key
#  impressionable_type :string(255)
#  impressionable_id   :integer
#  user_id             :integer
#  ip_address          :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class ImpressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
