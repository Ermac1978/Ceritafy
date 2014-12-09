# == Schema Information
#
# Table name: stories
#
#  id                :integer          not null, primary key
#  created_at        :datetime
#  updated_at        :datetime
#  user_story        :string(255)
#  user_id           :integer
#  title             :string(255)
#  user_text         :text
#  editor_picks      :boolean
#  impressions_count :integer
#

require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
