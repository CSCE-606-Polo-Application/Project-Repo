class RidingPreferencesController < ApplicationController
  def index
  end

  def show
    @member = Member.find(params[:member_id])
    @riding_preference = @member.riding_preferences.find(params[:id])
    @riding_preference.destroy
    redirect_to member_path(@member), status: 303
  end

  def new
    @member = Member.find(params[:member_id])
    @horses = Horse.all
  end

end
