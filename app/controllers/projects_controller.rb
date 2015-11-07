class ProjectsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])    
  end

  def index
    @project = Project.all
  end

  private

  def project_params
    params.require(:project).permit(:title, :image, :time, :minor, :work, :result)
  end
end
