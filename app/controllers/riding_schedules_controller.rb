class RidingSchedulesController < ApplicationController
  def index
    @riding_schedules = RidingSchedule.all
  end

  def new
    @riding_schedule = RidingSchedule.new
  end

  def show
    id = params[:id]
    @riding_schedule = RidingSchedule.find(id)
  end

  def create 
    riding_schedule = RidingSchedule.create(riding_schedule_params)
    redirect_to riding_schedules_path
  end

  private

  def riding_schedule_params
    params.require(:riding_schedule).permit(:riding_date,:riding_time)
  end

end
