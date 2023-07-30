class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :sale_apartments
  has_many :rent_apartments
  has_many :daily_apartments

  validates :name, presence: true
  validates :number, presence: true
end
