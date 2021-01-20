class TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end
  def show
    @theater = Theater.find(theater_params[:id])

  end

  private

  def theater_params
    params
  end
end
