class AddConsumerIdToInfluence < ActiveRecord::Migration
  def self.up
  add_column :influences, :consumer_id, :integer
  end
end
