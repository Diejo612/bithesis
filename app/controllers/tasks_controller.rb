class TasksController < ApplicationController
    def update
        @tasks = Task.find(params[:id])
        @tasks.update(task_params)
        @tasks.save
        redirect_to lines_path
    end

private

    def task_params
        params.require(:task).permit(:photo)
    end
end
