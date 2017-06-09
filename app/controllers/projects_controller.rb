class ProjectsController < ApplicationController

	def show
		@projects = Project.all.order(start_date: :desc)
		puts @projects
	end
end
