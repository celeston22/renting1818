class Bike < ApplicationRecord
  belongs_to :user
  has_many :booking 
  has_one_attached :image 
  validates :title, :type, :description, :daily_price, :address_line_1, :zipcode, :city, :country, :enable, presence: true
end

