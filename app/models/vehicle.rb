class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy

  def self.search(search)
    where("UPPER (car_make) ILIKE ? OR UPPER (car_model) ILIKE ? OR UPPER (car_color) ILIKE ?", "%#{search.upcase}%", "%#{search.upcase}%", "%#{search.upcase}%")
  end

  def price_in_cents
    (payout_per_mile * 100).to_i
  end

end
