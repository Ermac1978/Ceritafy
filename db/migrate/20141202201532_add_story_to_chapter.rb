class AddStoryToChapter < ActiveRecord::Migration
  def change
    add_reference :chapters, :story, index: true
  end
end
