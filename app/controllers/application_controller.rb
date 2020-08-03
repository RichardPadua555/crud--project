class ApplicationController < ActionController::Base

helper_method [:current_user , :logged_in?]

    def current_user
    	if session[:student_id]
			@current_user ||= Student.find(session[:student_id])
		end
	end

	def logged_in?
		!!current_user
	end	


end
