class Application < ApplicationRecord
  # enums
  enum status: {
    unseen: 0,
    seen: 1,
  }

  # associations
  belongs_to :job
  belongs_to :user

  # validations
  validates :title, :description, presence: true
end
