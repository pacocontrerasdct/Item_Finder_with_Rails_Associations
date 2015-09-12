class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :post_code
      t.string :genre
      t.integer :age

      t.timestamps null: false
    end
  end
end
