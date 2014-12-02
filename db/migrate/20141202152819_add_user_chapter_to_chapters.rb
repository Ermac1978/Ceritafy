class AddUserChapterToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :user_chapter, :string
  end
end
