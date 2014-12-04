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
#

class Chapter < ActiveRecord::Base
  mount_uploader :user_chapter, UserChapterUploader

  belongs_to :user
  belongs_to :story

#  scope :for_user, ->(user) { where(user: user) }
end
