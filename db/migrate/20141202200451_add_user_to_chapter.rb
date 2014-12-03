class AddUserToChapter < ActiveRecord::Migration
  def change
    add_reference :chapters, :user, index: true
  end
end
