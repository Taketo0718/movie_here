class CommentsController < ApplicationController
  before_action :set_comment, only: :destroy
  def index

  end
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to "/movies/#{@comment.movie.id}"
  end

  def edit; end

  def update; end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private

  def set_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment)
          .permit(:content, :movie_id, :user_id)
  end
end
