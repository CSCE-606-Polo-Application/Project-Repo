class RidingTimesController < ApplicationController
  def index
  end

  def new
    @ridingTime = RidingTime.new
  end
end
