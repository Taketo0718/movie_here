class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end
  def show
    @schedule = Schedule.find(schedule_params[:id])
    @movie = @schedule.movie
    @theater = @schedule.theater
  end

  private

  def schedule_params
    params
  end
end
