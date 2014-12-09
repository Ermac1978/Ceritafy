class AddImpressionableIdToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :impressionable_id, :integer
  end
end
