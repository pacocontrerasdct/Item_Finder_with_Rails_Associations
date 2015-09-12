class Buyer < ActiveRecord::Base
  has_many :items
  has_many :shops, through: :items
end
