class DailyApartment < ApplicationRecord
  belongs_to :user

  include Last
end
