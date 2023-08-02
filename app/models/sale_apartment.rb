class SaleApartment < ApplicationRecord
  include Last

  belongs_to :user

  has_one_attached :file

  validates :square_apartment, presence: true
  validates :price_apartment, presence: true
  validates :price_per_square_meter_apartment, presence: true
end
