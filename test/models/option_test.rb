# == Schema Information
#
# Table name: options
#
#  id              :integer          not null, primary key
#  chapter_id      :integer
#  option_text     :string(255)
#  prev_chapter    :integer
#  next_chapter    :integer
#  created_at      :datetime
#  updated_at      :datetime
#  next_chapter_id :integer
#

require 'test_helper'

class OptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
