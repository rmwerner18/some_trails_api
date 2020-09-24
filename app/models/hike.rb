class Hike < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    has_one_attached :photo
end
