class AddListingIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :listing_id, :integer
  end
end
