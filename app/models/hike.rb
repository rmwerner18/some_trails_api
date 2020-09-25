class Hike < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    has_one_attached :photo

    # def photo_url
    #     self.photo.service_url if self.photo.attached?
    # end

end
