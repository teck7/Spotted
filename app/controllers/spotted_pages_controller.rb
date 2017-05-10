class SpottedPagesController < ApplicationController

  def home
  end

  def faq
  end

  def search
    @vehicles = Vehicle.all
  end

end
