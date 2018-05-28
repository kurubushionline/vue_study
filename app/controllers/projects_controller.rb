class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    @project.save!
    (assign_params || {}).each do |aa|
      @project.assigns.create!(aa)
    end
  end

  def update
    @project = Project.find(params[:id])
    @project.update!
  end

  def project_params
    params.require(:project).permit(:name)
  end

  def assign_params
    params.require(:assigns).map { |u| u.permit(:user_id) }
  end
end
