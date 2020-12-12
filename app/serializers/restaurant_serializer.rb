class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :url, :display_phone, :categories, :rating, :location, :photos, :price
  has_many :menu_items
  has_many :favorites
  has_many :users
end
