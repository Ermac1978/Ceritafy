# == Schema Information
#
# Table name: impressions
#
#  id                  :integer          not null, primary key
#  impressionable_type :string(255)
#  impressionable_id   :integer
#  user_id             :integer
#  ip_address          :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

class Impression < ActiveRecord::Base
  belongs_to :impressionable, :polymorphic=>true, counter_cache: :impressions_count
end
