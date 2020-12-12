class MenuItem < ApplicationRecord
  belongs_to :restaurant
  has_many :cart_items
  has_many :carts, through: :cart_items
end
