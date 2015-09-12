class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :post_code
      t.string :opening_hours

      t.timestamps null: false
    end
  end
end
