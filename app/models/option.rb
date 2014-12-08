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

class Option < ActiveRecord::Base

  belongs_to :prev_chapter, class_name: "Chapter", foreign_key: "prev_chapter"
  belongs_to :next_chapter, class_name: "Chapter", foreign_key: "next_chapter"
end
