class StudentsController < ApplicationController
	before_action :set_student , only:[:show , :edit , :update]

layout 'universal_app'

	def index 
    @students = Student.all
	end

	def new
		@student = Student.new
		
	end

	def create
    	@student = Student.new(student_params)
    	if @student.save
    		flash[:notice] = 'Your account has Successfully been Created'
    		redirect_to students_path
    	else
            render 'new'
    	end		
    	
	end	

	def show
		
	end

	def edit
		
	end

	def update
		@student.update(student_params)
		if @student.save
			flash[:sucess] = 'Successfully Updated Your Profile'
			redirect_to @student
		else
			render 'edit'	
		end	
		
	end


	private

	def student_params
		params.require(:student).permit(:name , :email, :password , :password_confirmation)

	end	

	def set_student
		@student = Student.find(params[:id])
		
	end

end	