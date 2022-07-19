class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
  end

  private
  def task_params
    params.require(:task).permit(:name, :content, :prioity_id, :daedline_month, :daedline_day).merge(user_id: current_user.id)
  end
end
