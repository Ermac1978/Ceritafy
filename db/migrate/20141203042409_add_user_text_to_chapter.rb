class AddUserTextToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :user_text, :text
  end
end
