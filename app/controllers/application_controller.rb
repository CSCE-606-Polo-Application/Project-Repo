class ApplicationController < ActionController::Base
    protect_from_forgery

    def after_sign_in_path_for(resource)
        #assigns the current user's id and officer/member status to the session variable
        #so views can be rendered to meet their level of access 
        user = params[:user]
        email = user[:email]
        member = Member.where(email: email)
        session[:user_id]=member.ids[0]
        if isOfficer?(member.ids)
            session[:isOfficer]=true
        else
            session[:isOfficer]=false
        end
        
        member_path(member.collect { |m| [ m.id ] } )
    end

    def isOfficer?(id)
        Officer.exists?(:member_id => id)
    end
end
