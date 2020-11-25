class Appointment < ApplicationRecord
  validates :date, :time, :price, :user, :bug, presence: true

  belongs_to :user
  belongs_to :bug, dependent: :destroy
end
