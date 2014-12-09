# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_story :string(255)
#  user_id    :integer
#  title      :string(255)
#  user_text  :text
#

class Story < ActiveRecord::Base
  is_impressionable

  mount_uploader :user_story, UserStoryUploader

  belongs_to :user
  has_many :chapters
  accepts_nested_attributes_for :chapters, allow_destroy: true

  scope :for_user, ->(user) { where(user: user) }



end
