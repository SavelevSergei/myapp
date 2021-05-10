class Task < ApplicationRecord
  validates :title, length: {maximum: 255}
end
