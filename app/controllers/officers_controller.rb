class OfficersController < ApplicationController
  before_action :page_title
  
  def index
    @officers = Officer.all
  end

  def new
    @officer = Officer.new
    @members = Member.all.collect { |m| [ m.std_first_name + " " + m.std_last_name, m.id ] }
  end

  def create 
    new_officer = Officer.create(officer_params)
    if (new_officer.valid?)
      redirect_to officers_path
    else
      redirect_to new_officer_path
    end
  end

  def destroy
    @member = Member.find(params[:member_id])
    @officer = @member.officers.find(params[:id])
    @officer.destroy
    redirect_to officers_path
  end

  private

  def officer_params
    params.require(:officer).permit(:position,:member_id)
  end

  def page_title
    @page_title = "Officers"
  end
end
