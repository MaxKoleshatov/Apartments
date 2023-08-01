class SaleApartment < ApplicationRecord
  belongs_to :user

  include Last
end