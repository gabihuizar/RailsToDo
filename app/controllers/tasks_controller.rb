class TasksController < ApplicationController

    def index
        render json: Task.order(:id) #renders JSON instead of HTML for all tasks in order by id
    end

    def update
        task = Task.find(params[:id])
        task.update_attributes(task_params)
        render json: task
    end

    def create
        task = Task.create(task_params)
        render json: task
    end

    private

    def task_params
        params.require(:task).permit(:done, :title)
    end
end
