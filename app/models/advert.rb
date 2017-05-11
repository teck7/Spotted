class Advert < ApplicationRecord
  belongs_to :user

  mount_uploader :advert_image, AdimgUploader

  validates_processing_of :advert_image
  validate :advert_image_size_validation

  def pay_amount
    (payout_per_mile*5*advert_period*30*100).to_i
  end


  private
    def advert_image_size_validation
      errors[:advert_image] << "The file size should be less than 200kB" if advert_image.size > 0.2.megabytes
    end

end
