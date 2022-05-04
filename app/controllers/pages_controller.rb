class PagesController < ApplicationController
  before_action :page_title
  
  def home
  end

  private

  def page_title
    #This defines the page title so the navbar can activate the correct tab
    @page_title = "Home"
  end
end
