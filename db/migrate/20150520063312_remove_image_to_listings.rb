class RemoveImageToListings < ActiveRecord::Migration
  def change
    remove_column :listings, :image, :string
  end
end
