class User < ApplicationRecord
    # has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :carts
    has_many :favorites
    has_many :restaurants, through: :favorites

 

end
