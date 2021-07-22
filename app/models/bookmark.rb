class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :list, presence: true, uniqueness: { movie: :year }
  validates :movie, presence: true
end
