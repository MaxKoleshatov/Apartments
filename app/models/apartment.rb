class Apartment < ApplicationRecord

  enum option: [ :sale, :rent, :daily ]
  
  belongs_to :user
  has_one_attached :file

  validates :square, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :option, presence: true

  def self.last_24_hours
    where("created_at > ?", Time.now - 1.day)
  end 
end
