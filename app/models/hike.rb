class Hike < ApplicationRecord
    belongs_to :user
    belongs_to :trail

    has_one_attached :photo

    

    # def formatted_start
    #     self.start.strftime("%B %d, %Y")
    # end

    # def formatted_end
    #     self.end.strftime("%B %d, %Y")
    # end

    # def photo_url
    #     self.photo.service_url if self.photo.attached?
    # end

end
