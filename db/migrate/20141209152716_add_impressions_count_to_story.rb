class AddImpressionsCountToStory < ActiveRecord::Migration
  def change
    add_column :stories, :impressions_count, :integer
  end
end
