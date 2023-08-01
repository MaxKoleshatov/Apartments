class RentApartment < ApplicationRecord
  belongs_to :user

  include Last
end
