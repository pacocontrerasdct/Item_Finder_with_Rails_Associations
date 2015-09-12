class AddBuyerIdAndShopIdToItems < ActiveRecord::Migration
  def change
    add_reference :items, :shop, index: true, foreign_key: true
    add_reference :items, :buyer, index: true, foreign_key: true
  end
end
