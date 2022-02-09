class TaskStatusesController < ApplicationController
  def update
    @task = TaskStatus.find(params[:id])
    @task.update task_params
    @task.save
  end

  private

  def task_params
    params.require(:completed).permit(:completed, :photo)
  end

end
