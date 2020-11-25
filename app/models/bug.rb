class Bug < ApplicationRecord
  validates :computer, :system, :category, :topic, :description, presence: true

  has_many :appointments
  has_many :users, through: :appointments

  has_many_attached :photos
end
