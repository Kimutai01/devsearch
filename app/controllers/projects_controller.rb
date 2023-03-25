class ProjectsController < ApplicationController

    def index
        @projects = Project.all
        render json: @projects
    end

    def show
        @project = Project.find(params[:id])
        render json: @project
    end

    def new
        @project = Project.new
        render json: @project
    end

    def create
        @project = Project.new(params[:project])
        if @project.save
        redirect_to @project, :notice => "Successfully created project."
        else
        render :action => 'new'
        end
    end

    def edit
        @project = Project.find(params[:id])
        render json: @project
    end

    def update
        @project = Project.find(params[:id])
        if @project.update_attributes(params[:project])
        redirect_to @project, :notice  => "Successfully updated project."
        else
        render :action => 'edit'
        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to projects_url, :notice => "Successfully destroyed project."
    end

end
