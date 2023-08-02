class RentApartment < ApplicationRecord
  include Last

  belongs_to :user

  has_one_attached :file

  validates :square_apartment, presence: true
  validates :price_mount_apartment, presence: true
end
