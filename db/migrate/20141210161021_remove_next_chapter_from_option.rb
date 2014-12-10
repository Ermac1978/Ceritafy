class RemoveNextChapterFromOption < ActiveRecord::Migration
  def change
    remove_column :options, :next_chapter, :integer
  end
end
