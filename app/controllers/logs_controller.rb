class LogsController < ApplicationController
    def index
        logs = Log.all
        render json: logs, except: [:updated_at], include: [ :workout => {:include => [:user]}]
    end

    def show
        log = Log.find(params[:id])
        render json: log, except: [:updated_at], include: [ :workout => {:include => [:user]}]
    end

    def create
        log = Log.create(log_params)
        render json: log, except: [:updated_at], include: [ :workout => {:include => [:user]}], status: 201
    end

    def update
        log = Log.find_by(id: params[:id])
        log.update(log_params)
        render json: log, except: [:updated_at], include: [ :workout => {:include => [:user]}], status: 201
    end

    def destroy
        log = Log.find_by(id: params[:id])
        log.destroy
    end

    private

    def log_params
        params.require(:log).permit(:user_id, :workout_id)
    end
end
