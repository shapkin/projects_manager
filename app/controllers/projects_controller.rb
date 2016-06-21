class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    respond_with current_user.projects
  end

  def create
    respond_with current_user.projects.create(project_params)
  end

  def show
    respond_with current_user.projects.find(params[:id])
  end

  private

    def project_params
      params.require(:project).permit(:name, :description)
    end

end
