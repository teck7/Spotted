class SpottedPagesController < ApplicationController

  def home
  end

  def faq
  end

  def search
    @vehicles = Vehicle.all
  end

  def self.search(search)
    where("UPPER (car_make) ILIKE ? OR UPPER (car_model) ILIKE ? OR UPPER (car_color) ILIKE ?", "%#{search.upcase}%", "%#{search.upcase}%", "%#{search.upcase}%")
  end

end
