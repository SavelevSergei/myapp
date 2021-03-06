class TasksController < ApplicationController
  before_action :authenticate_user!

  before_action :set_task, only: [:show]
  before_action :set_current_user_task, only: [:edit, :update, :destroy]

  # GET /tasks
  def index
    # @tasks = current_user.tasks
    # @completed_tasks = current_user.tasks
    @tasks = Task.where(completed: false)
    @completed_tasks = Task.where(completed: true)
  end

  # GET /tasks/1
  def show

  end

  # GET /tasks/new
  def new
    @task = current_user.tasks.build
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to @task, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  # def complete
  #   @task = current_user.tasks.find(params[:id])
  #
  #   @task.complete!
  #   redirect_to edit_task_url
  # end

  # DELETE /tasks/1
  def destroy
    @task = current_user.tasks.find(params[:id])

    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_user_task
      @task = current_user.tasks.find(params[:id])
    end

    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :description, :datetime, :priority, :completed)
    end
end
