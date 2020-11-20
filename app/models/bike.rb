class Bike < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings
  has_one_attached :image
  validates :title, :bike_type, :description, :daily_price, :address_line_1, :zipcode, :city, :country, :enable, presence: true

  # 18.11.2020 geocoder from lecture
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  #  Syntaxe ???
  geocoded_by :full_address
  # after_validation :geocode, if: :will_save_change_to_full_address?

  def full_address
    return "#{address_line_1}, #{zipcode}, #{city}, #{country}"
  end

  pg_search_scope :search_by_title_and_bike_type_and_description,
  against: [ :title, :bike_type, :description ],
  using: {
    tsearch: { prefix: true }
  }

end
