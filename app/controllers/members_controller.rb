class MembersController < ApplicationController
  before_action :current_member, only: [:show, :edit, :update, :destroy]
  before_action :page_title
  def index
    @members = Member.all
  end

  def show
    @join_date = @member.created_at.strftime("%m/%d/%Y")
  end

  def new
    @member = Member.new
  end

  def create 
    new_member = Member.create(member_params)
    if (new_member.valid?)
      #When a user is first created, their id and member status is saved to the session variable so 
      #views will only show their correct level of access
      session[:user_id] = new_member.id
      session[:isOfficer]=false
      redirect_to member_path(new_member.id)
    else
      redirect_to new_member_path
    end
  end

  def edit

  end

  def dashboard
    #controller function for the member dashboard
    @member = Member.find(params[:id])
    @join_date = @member.created_at.strftime("%m/%d/%Y")
    @page_title = "Home"
  end

  def update
    @member.update(member_params)
    #After a member is updated, the user is redirected to the members index path if they are an officer
    #Otherwise, they go to their own member dashboard since they will edited their own profile
    if session[:isOfficer]
      redirect_to members_path
    else
      redirect_to member_path(session[:user_id])
    end 
  end

  def destroy
    @member.destroy

    redirect_to members_path
  end

  private

  def member_params
    params.require(:member).permit(:std_first_name,:std_last_name,:telephone,:email,:uin,:riding_experience)
  end

  def current_member
    @member = Member.find(params[:id])
  end

  def page_title
    #This defines the page title so the navbar can activate the correct tab
    @page_title = "Members"
  end

end