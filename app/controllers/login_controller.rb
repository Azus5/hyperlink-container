class LoginController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        render inertia: 'Login/index'
    end
end
