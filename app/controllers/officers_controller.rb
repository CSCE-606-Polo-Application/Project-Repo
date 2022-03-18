class OfficersController < ApplicationController
  def contactUs
    @officers = Officer.all
  end
end
