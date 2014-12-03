# == Schema Information
#
# Table name: chapters
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  user_chapter :string(255)
#  user_id      :integer
#  story_id     :integer
#

require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
