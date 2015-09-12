class Shop < ActiveRecord::Base
  has_many :items
  has_many :buyers, through: :items 
end
