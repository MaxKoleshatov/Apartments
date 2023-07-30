class User < ApplicationRecord
  has_many :sale_apartments

  validates :name, presence: true
  validates :number, presence: true
end
