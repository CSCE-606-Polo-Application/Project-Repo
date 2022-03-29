class HorsesController < ApplicationController
  def index
    @horses = Horse.all
  end

  def edit
    @horse = Horse.find(params[:id])
  end

  def show
    id = params[:id]
    @horse = Horse.find(id)
  end

  def new
    @horse = Horse.new
  end

  def create 
    horse = Horse.create(horse_params)
    redirect_to horse_path(horse)
  end

  def update
    @horse = Horse.find(params[:id])

    @horse.update(horse_params)

    redirect_to horse_path(@horse)
  end

  def destroy
    @horse = Horse.find(params[:id])
    @horse.destroy

    redirect_to horses_path
  end

  private

  def horse_params
    params.require(:horse).permit(:horse_name,:brand_number,:availability)
  end
end
