class RidingSchedulesController < ApplicationController
  before_action :current_riding_schedule, only: [:show, :edit, :update, :destroy]

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

end
