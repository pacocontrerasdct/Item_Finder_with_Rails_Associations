class Buyer < ActiveRecord::Base
  has_many :items, inverse_of: :buyer
  has_many :shops, through: :items

  validates :name, :post_code, :genre, :age, presence: true
end
