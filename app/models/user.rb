class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :phone_number, :card_details, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :appointments, dependent: :destroy
  has_many :bugs, through: :appointments

  has_one_attached :profile_photo
end
