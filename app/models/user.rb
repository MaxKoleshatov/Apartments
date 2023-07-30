class User < ApplicationRecord
  has_many :sale_apartments
  has_many :rent_apartments
  has_many :daily_apartments

  validates :name, presence: true
  validates :number, presence: true
end
