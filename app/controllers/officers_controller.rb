class OfficersController < ApplicationController
  def index
    @officers = Officer.all
  end

  def destroy
    @officer.destroy
  end
end
