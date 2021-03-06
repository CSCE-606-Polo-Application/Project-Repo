class ContactsController < ApplicationController
  before_action :page_title
  
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:error] = 'Could not send message'
      render :new
    end
  end

  private

  def page_title
    #This defines the page title so the navbar can activate the correct tab
    @page_title = "Contact"
  end
end
