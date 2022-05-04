class RidingSchedulesController < ApplicationController
  before_action :current_riding_schedule, only: [:show, :edit, :update, :destroy]
  before_action :page_title
  def index
    @riding_schedules = RidingSchedule.all
  end

  def new
    @riding_schedule = RidingSchedule.new
  end

  def show
  end

  def create 
    riding_schedule = RidingSchedule.create(riding_schedule_params)
    redirect_to riding_schedules_path
  end

  def destroy
    @riding_schedule.destroy

    redirect_to riding_schedules_path
  end

  private

  def riding_schedule_params
    params.require(:riding_schedule).permit(:riding_datetime)
  end

  def current_riding_schedule
    @riding_schedule = RidingSchedule.find(params[:id])
  end

  def page_title
    #This defines the page title so the navbar can activate the correct tab
    @page_title = "Schedule"
  end

end
