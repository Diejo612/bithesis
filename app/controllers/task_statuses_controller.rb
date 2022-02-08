class TaskStatusesController < ApplicationController
  def update
    @task = TaskStatus.find_by_id params[:id]
    @task.update task_params
    @task.save
    respond_to do |format|
      format.js
      format.html
      format.json
    end
  end

  private

  def task_params
    params.require(:task_status).permit(:completed)
  end

end
