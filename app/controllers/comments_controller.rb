class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments, except: [:created_at, :updated_at], include: [ :workout, :user]
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment, except: [:created_at, :updated_at], include: [ :workout, :user]
    end

    def create
        comment = Comment.create(comment_params)
        render json: comment, except: [:created_at, :updated_at], include: [ :workout, :user], status: 201
    end

    def update
        comment = Comment.find_by(id: params[:id])
        comment.update(comment_params)
        render json: comment, except: [:created_at, :updated_at], include: [ :workout, :user], status: 201
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :workout_id)
    end
end
