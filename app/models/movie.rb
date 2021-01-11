class Movie < ApplicationRecord
  has_many :schedules
  belongs_to :theater
  has_many :reviews
  has_many :comments, dependent: :destroy
end
