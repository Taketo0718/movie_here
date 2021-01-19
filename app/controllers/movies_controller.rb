class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find(movie_params[:id])
    @comment = Comment.new
    @comments = @movie.comments.order(created_at: :desc)
  end
  private
  def movie_params
    params
  end
end
