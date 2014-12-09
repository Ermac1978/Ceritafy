class AddEditorPicksToStory < ActiveRecord::Migration
  def change
    add_column :stories, :editor_picks, :boolean
  end
end
