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
#  user_text    :text
#  chapter_num  :integer
#

class Chapter < ActiveRecord::Base
  mount_uploader :user_chapter, UserChapterUploader

  belongs_to :user
  belongs_to :story
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true

 # scope :for_user, ->(user) { where(user: user) }
end
