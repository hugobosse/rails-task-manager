class TasksController < ApplicationController
  def index         # GET /tasks
    @tasks = TaskManager.all
  end

  def show
    @task =TaskManager.find(params[:id])     # GET /tasks/:id
  end

  def new
              # GET /tasks/new
    @task = TaskManager.new
  end

  def create        # POST /tasks
    @task = TaskManager.new(params[:task])
    @task.save
  end

  def edit          # GET /tasks/:id/edit
  end

  def update        # PATCH /tasks/:id
    @task = TaskManager.find(params[:id])
    @task.update(params[:task])
  end

  def destroy       # DELETE /tasks/:id
    @task = TaskManager.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end
end
