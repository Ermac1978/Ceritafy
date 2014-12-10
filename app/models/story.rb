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

class Story < ActiveRecord::Base

  validates :title, presence: true

  has_many :impressions, as: :impressionable

  def impression_count
    impressions.size
  end

  mount_uploader :user_story, UserStoryUploader

  belongs_to :user
  has_many :chapters
  accepts_nested_attributes_for :chapters, allow_destroy: true

  scope :for_user, ->(user) { where(user: user) }

  def first_chapter
 #   Chapter.where(chapter_num: 1).where(story_id: id).first
    self.chapters.where(chapter_num: 1).first
  end
end
