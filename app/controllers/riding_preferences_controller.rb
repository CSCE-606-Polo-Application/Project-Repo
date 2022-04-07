class RidingPreferencesController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    puts @member.riding_preferences
    @riding_preference = RidingPreference.new
    @horses = Horse.where.not(id: @member.horses.ids).collect { |h| [ h.horse_name, h.id ] }

  end

  def create
    riding_preference = RidingPreference.create(riding_preference_params)
    redirect_to member_riding_preference_path(riding_preference)
  end

  def destroy
    @riding_preference.destroy
  end

  private

  def riding_preference_params
    horse_id = Horse.find_by(horse_name: :horse_name)
    params.require(:riding_preference).permit(:member_id,:horse_id)
  end

  
end
