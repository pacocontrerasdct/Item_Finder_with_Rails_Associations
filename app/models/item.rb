class Item < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :shop
end
