class AddUserStoryToStories < ActiveRecord::Migration
  def change
    add_column :stories, :user_story, :string
  end
end
