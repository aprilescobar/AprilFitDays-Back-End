class LogsController < ApplicationController
    def index
        logs = PersonalLibrary.all
        render json: logs, except: [:created_at, :updated_at], include: [:user, :workout => {:include => [:user]}]
    end

    def show
        log = PersonalLibrary.find(params[:id])
        render json: log, except: [:created_at, :updated_at], include: [:user, :workout => {:include => [:user]}]
    end

    def create
        log = PersonalLibrary.create(log_params)
        render json: log, except: [:created_at, :updated_at], include: [:user, :workout => {:include => [:user]}], status: 201
    end

    def update
        log = PersonalLibrary.find_by(id: params[:id])
        log.update(log_params)
        render json: log, except: [:created_at, :updated_at], include: [:user, :workout => {:include => [:user]}], status: 201
    end

    def destroy
        log = PersonalLibrary.find_by(id: params[:id])
        log.destroy
    end

    private

    def log_params
        params.require(:log).permit(:user_id, :workout_id)
end
