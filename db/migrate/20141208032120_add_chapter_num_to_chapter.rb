class AddChapterNumToChapter < ActiveRecord::Migration
  def change
    add_column :chapters, :chapter_num, :integer
  end
end
