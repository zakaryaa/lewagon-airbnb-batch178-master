class Photo < ApplicationRecord
  belongs_to :apartment
  mount_uploader :photo, PhotoUploader
  validates :apartment, presence: true
end
