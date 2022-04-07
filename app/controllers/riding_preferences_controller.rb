class RidingPreferencesController < ApplicationController

  def new
    @member = Member.find(params[:member_id])
    @riding_preference = RidingPreference.new
    horses = Horse.all
    @horse_names = []
    horses.each do |horse|
      @horse_names << horse.horse_name
    end
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
