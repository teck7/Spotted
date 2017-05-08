class Photo < ApplicationRecord
  belongs_to :vehicle

  mount_uploader :image, ImageUploader

  validates_processing_of :image
  validate :image_size_validation

  private
    def image_size_validation
      errors[:image] << "The file size should be less than 200kB" if image.size > 0.2.megabytes
    end

end
