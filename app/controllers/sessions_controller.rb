class SessionsController < ApplicationController

layout 'universal_app'

	def new
		
	end

	def create
		student =  Student.find_by(email: params[:sessions][:email].downcase)
		if student && student.authenticate(params[:sessions][:password])
			session[:student_id] = student.id
			flash[:success] =  'You have successfully loged in'
			redirect_to student
        else
        	flash.now[:notice] = 'Please re-enter a valid email and password'
        	render 'new'
		end	
		
	end

	def destroy
		session[:student_id] = nil
		flash[:notice] = 'You have logged out'
        redirect_to root_path		
	end



end	