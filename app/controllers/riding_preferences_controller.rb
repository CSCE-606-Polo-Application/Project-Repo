class RidingPreferencesController < ApplicationController
  before_action :current_member

  def new
    @riding_preference = RidingPreference.new
    @horses = Horse.where.not(id: @member.horses.ids).collect { |h| [ h.horse_name, h.id ] }

  end

  def create
    riding_preference = RidingPreference.create(riding_preference_params)
    redirect_to member_path(@member)
  end

  def destroy
    riding_preference = RidingPreference.find(params[:id])
    riding_preference.destroy
    redirect_to member_path(@member)
  end

  private

  def riding_preference_params
    riding_preference_params = params.require(:riding_preference).permit(:horse_id)
    riding_preference_params[:member_id] = params[:member_id]
    return riding_preference_params
  end

  def current_member
    @member = Member.find(params[:member_id])
  end

  
end
