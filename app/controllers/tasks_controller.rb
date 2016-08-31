class TasksController < ApplicationController

    def index
        render json: Task.all #renders JSON instead of HTML for all tasks in database
    end
end
