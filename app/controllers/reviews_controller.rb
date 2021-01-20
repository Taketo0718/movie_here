class ReviewsController < ApplicationController
  def index
    @reviews = Review.select("movie_id, round(avg(rating),2) as avg_rating").group("movie_id").order(avg_rating:"DESC")
  end
end
