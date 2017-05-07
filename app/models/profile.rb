class Profile < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  validates_processing_of :avatar
  validate :avatar_size_validation

  private
    def avatar_size_validation
      errors[:avatar] << "The file size should be less than 200kB" if avatar.size > 0.2.megabytes
    end

end
