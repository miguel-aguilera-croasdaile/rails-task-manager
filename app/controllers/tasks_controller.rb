class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index #DONE
    @tasks = Task.all
  end

  def show #DONE
  end

  def new #DONE
    @task = Task.new
  end

  def create #DONE
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit #DONE
    @task = Task.find(params[:id])
  end

  def update #DONE
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy #DONE
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
