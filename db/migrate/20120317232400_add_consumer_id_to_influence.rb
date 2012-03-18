class AddConsumerIdToInfluence < ActiveRecord::Migration
  def change
    add_column :influences, :consumer_id, :integer
  end
end
