
include ActiveModel::Serialization

class User < ApplicationRecord
    has_many :favorites
    has_many :trails, through: :favorites
    has_many :hikes
    has_many :trails, through: :hikes
    
    has_secure_password
    # validates :username, uniqueness: { case_sensitive: false }
end
