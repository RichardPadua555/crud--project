class CoursesController < ApplicationController

layout 'universal_app'

	def index

		@courses = Course.all

	end	

end	