# == Schema Information
#
# Table name: chapters
#
#  id           :integer          not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  user_chapter :string(255)
#

class Chapter < ActiveRecord::Base
  mount_uploader :user_chapter, UserChapterUploader
end
