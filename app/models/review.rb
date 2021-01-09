class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :review_site
end
