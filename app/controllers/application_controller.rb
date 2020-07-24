class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery prepend: true

    protected

    def authenticate_user! 
        if user_signed_in?
            super
        else 
            redirect_to '/login'
        end
    end
end
