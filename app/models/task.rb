class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: {maximum: 255}
  validates :description, presence: true
  validates :datetime, presence: true
end
