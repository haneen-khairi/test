class Job < ApplicationRecord
  has_many :applications
  has_many :users, through: :applications

  # validation
  validates :title, :description, presence: true
end
