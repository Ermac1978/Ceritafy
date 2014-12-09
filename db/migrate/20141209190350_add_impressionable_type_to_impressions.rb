class AddImpressionableTypeToImpressions < ActiveRecord::Migration
  def change
    add_column :impressions, :impressionable_type, :string
  end
end
