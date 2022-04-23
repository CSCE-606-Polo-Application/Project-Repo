class ApplicationController < ActionController::Base
    protect_from_forgery
    Time.zone = 'Central Time (US & Canada)'
end
