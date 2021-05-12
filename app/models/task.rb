class Task < ApplicationRecord
  validates :title, length: {maximum: 255}
  validates :description
  validates :datetime
end
