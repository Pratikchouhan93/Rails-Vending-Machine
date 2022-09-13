class RenameItemIdToPrice < ActiveRecord::Migration[7.0]
  def change
    rename_column :carts, :item_id, :price
  end
end
