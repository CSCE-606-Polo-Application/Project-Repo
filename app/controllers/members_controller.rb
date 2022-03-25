class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    id = params[:id]
    @member = Member.find(id)
    @join_date = @member.created_at.strftime("%m/%d/%Y")
  end

end
