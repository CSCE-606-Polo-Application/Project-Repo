class RidingTimesController < ApplicationController
    before_action :current_riding_schedule
    before_action :page_title
    def new
        @riding_time = RidingTime.new
        #Generates a list of members and horses who are not signed up for the current event so an officer can
        #Sign them up
        @members = Member.where.not(id: @riding_schedule.members.ids).collect { |m| [ m.std_first_name + " " + m.std_last_name, m.id ] }
        @horses = Horse.where.not(availability: false).collect { |h| [ h.horse_name, h.id ] }
        
        #Generates the name of the signed in member so they can sign themselves up without seeing other users' names
        @signed_in_member = Member.where(id: session[:user_id]).collect { |m| [ m.std_first_name + " " + m.std_last_name, m.id ] }
    end

    def create
        riding_time = RidingTime.create(riding_time_params)
        redirect_to riding_schedule_path(@riding_schedule)
    end

    def destroy
        riding_time = RidingTime.find(params[:id])
        riding_time.destroy
        redirect_to riding_schedule_path(@riding_schedule)
    end

    private

    def riding_time_params
        riding_time_params = params.require(:riding_time).permit(:horse_id,:member_id)
        riding_time_params[:riding_schedule_id] = params[:riding_schedule_id]
        return riding_time_params
    end

    def current_riding_schedule
        @riding_schedule = RidingSchedule.find(params[:riding_schedule_id])
    end

    def page_title
        #This defines the page title so the navbar can activate the correct tab
        @page_title = "Schedule"
    end
end


