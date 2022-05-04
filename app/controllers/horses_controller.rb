class HorsesController < ApplicationController
  before_action :page_title
  
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
    if horse.valid?
      redirect_to horse_path(horse)
    else
      redirect_to new_horse_path
    end
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
    params.require(:horse).permit(:horse_name,:brand_number,:availability,:description)
  end

  def page_title
    #This defines the page title so the navbar can activate the correct tab
    @page_title = "The Herd"
  end
end
