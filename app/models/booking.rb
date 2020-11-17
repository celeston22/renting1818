class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  validates :total_price, :start_date, :end_date, :status, :presence: true
end
