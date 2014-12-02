# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_story :string(255)
#

class Story < ActiveRecord::Base
  mount_uploader :user_story, UserStoryUploader
end
