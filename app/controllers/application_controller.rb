class ApplicationController < ActionController::Base
    protect_from_forgery

    def after_sign_in_path_for(resource)
        user = params[:user]
        email = user[:email]
        member = Member.where(email: email)
        session[:user_id]=member.ids[0]
        if isOfficer?(member.ids)
            session[:isOfficer]=true
        else
            session[:isOfficer]=false
        end
        member_path(resource)
    end

    def isOfficer?(id)
        Officer.exists?(:member_id => id)
    end
end
