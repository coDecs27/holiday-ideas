class Holiday < ApplicationRecord
  has_one_attached :photo
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
