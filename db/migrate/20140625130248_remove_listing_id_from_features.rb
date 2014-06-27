class RemoveListingIdFromFeatures < ActiveRecord::Migration
  def change
     remove_column :features, :listing_id
  end

end
