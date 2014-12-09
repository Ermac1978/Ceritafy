# == Schema Information
#
# Table name: impressions
#
#  id                  :integer          not null, primary key
#  created_at          :datetime
#  updated_at          :datetime
#  impressionable_id   :integer
#  impressionable_type :string(255)
#

require 'test_helper'

class ImpressionsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
