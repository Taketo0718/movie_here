class ReviewsController < ApplicationController
  def index
    @reviews = Review.select("movie_id, avg(rating) as avg_rating").group("movie_id").order(avg_rating:"DESC")
  end
end
