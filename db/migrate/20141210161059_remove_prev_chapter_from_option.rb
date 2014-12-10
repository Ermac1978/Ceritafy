class RemovePrevChapterFromOption < ActiveRecord::Migration
  def change
    remove_column :options, :prev_chapter, :integer
  end
end
