class ApplicationController < ActionController::Base

    include WelcomeHelper
    include LogsHelper
    
    def autenticado?

        if session[:login].blank?
          redirect_to root_path
          return false
        end
    
    end
    
end
