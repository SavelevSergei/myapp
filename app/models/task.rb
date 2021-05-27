class Task < ApplicationRecord
  PRIORITIES = [
    ['Low', 1],
    ['Medium', 2],
    ['High', 3]
  ]

  belongs_to :user

  validates :title, presence: true, length: {maximum: 255}
  validates :description, presence: true
  validates :datetime, presence: true

  # def complete!
  #   self.completed = true
  #   save
  # end
end
