class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_one :vehicle, dependent: :destroy
  has_many :adverts, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
