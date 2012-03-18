class AddConsumerIdToFacebook < ActiveRecord::Migration
  def change
    add_column :facebooks, :consumer_id, :integer
  end
end
