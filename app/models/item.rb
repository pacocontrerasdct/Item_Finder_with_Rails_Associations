class Item < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :shop

  validates :buyer, presence: true
  validates :shop, presence: true

  validates :name, :brand, :price, :size, presence: true
end
