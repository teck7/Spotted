class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy

  def self.search(search)
    where("car_make ILIKE ? OR car_model ILIKE ? OR car_built ILIKE ? OR car_color ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
