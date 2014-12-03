class AddUserTextToStory < ActiveRecord::Migration
  def change
    add_column :stories, :user_text, :text
  end
end
