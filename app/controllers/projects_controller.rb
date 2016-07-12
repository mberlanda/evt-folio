class ProjectsController < ApplicationController
  
  def index
    @projects =  Project.all
  end

  def new
    @project = Project.new
  end

  def create
  end

  def show
    @project = Project.find(params.require(:id))
  end

  def update
  end

end