class MembersController < ApplicationController
  before_action :current_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def show
    id = params[:id]
    @member = Member.find(id)
    @join_date = @member.created_at.strftime("%m/%d/%Y")
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create 
    member = Member.create(member_params)
    redirect_to member_path(member)
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member.update(member_params)

    redirect_to member_path(@member)
  end
  def update
    @member = Member.find(params[:id])

    @member.update(member_params)

    redirect_to member_path(@member)
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    redirect_to members_path
  end

  private

  def member_params
    params.require(:member).permit(:std_first_name,:std_last_name,:telephone,:email,:uin)
  end

  def current_member
    @member = Member.find(params[:id])
  end
end