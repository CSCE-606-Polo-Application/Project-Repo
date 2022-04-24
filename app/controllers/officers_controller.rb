class OfficersController < ApplicationController
  before_action :page_title
  
  def index
    @officers = Officer.all
  end

  def destroy
    @officer.destroy
  end

  private

  def page_title
    @page_title = "Officers"
  end
end
