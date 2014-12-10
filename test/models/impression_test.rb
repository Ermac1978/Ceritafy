# == Schema Information
#
# Table name: impressions
#
#  id                  :integer          not null, primary key
#  impressionable_type :string(255)
#  impressionable_id   :integer
#  user_id             :integer
#  controller_name     :string(255)
#  action_name         :string(255)
#  view_name           :string(255)
#  request_hash        :string(255)
#  ip_address          :string(255)
#  session_hash        :string(255)
#  message             :text
#  referrer            :text
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class ImpressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
