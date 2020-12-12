class Restaurant < ApplicationRecord
    has_many :menu_items, :dependent => :destroy
    has_many :favorites
    has_many :users, through: :favorites
end
