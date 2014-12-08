class AddNextChapterIdToOption < ActiveRecord::Migration
  def change
    add_column :options, :next_chapter_id, :integer
  end
end
