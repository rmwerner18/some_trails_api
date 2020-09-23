class Trail < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    has_many :hikes
    has_many :users, through: :hikes
end
