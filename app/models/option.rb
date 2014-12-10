# == Schema Information
#
# Table name: options
#
#  id              :integer          not null, primary key
#  chapter_id      :integer
#  option_text     :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  next_chapter_id :integer
#

class Option < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :next_chapter, class_name: "Chapter"
end
