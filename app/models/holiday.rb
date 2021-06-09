class Holiday < ApplicationRecord
  has_one_attached :photo
  validates :city, :country, :description, :rating, presence: true
  validates :city, uniqueness: true
  validates :description, length: { minimum: 75 }
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
