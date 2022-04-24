class PagesController < ApplicationController
  before_action :page_title
  
  def home
  end

  private

  def page_title
    @page_title = "Home"
  end
end
