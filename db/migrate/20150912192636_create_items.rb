class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :size

      t.timestamps null: false
    end
  end
end
