class MytasksController < ApplicationController
    before_action :authenticate_user!
    # before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    # GET projects/1/tasks
    def index
      @tasks = Task.where(assignee: current_user.email )
    end
  
    # GET projects/1/tasks/1
    def show
    end
  
    # GET projects/1/tasks/new
    def new
    end
  
    # GET projects/1/tasks/1/edit
    def edit
    end
  
    # POST projects/1/tasks
  
    # PUT projects/1/tasks/1
    def update
      if @task.update(task_params)
        redirect_to(@task.project)
      else
        render action: 'edit'
      end
    end
  
    # DELETE projects/1/tasks/1
    def destroy
      @task.destroy
  
      redirect_to @project
    end
  
    # private
    #   def set_task
    #     @task = Task.find_by(assignee: :current_user.email)
    #   end
  
      # Only allow a trusted parameter "white list" through.
end
