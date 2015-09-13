class Shop < ActiveRecord::Base
  has_many :items, inverse_of: :shops
  has_many :buyers, through: :items 

  validates :name, :post_code, :opening_hours, presence: true
end
