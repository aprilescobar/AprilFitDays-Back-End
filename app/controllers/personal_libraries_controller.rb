class PersonalLibrariesController < ApplicationController
    def index
        personal_libraries = PersonalLibrary.all
        render json: personal_libraries, except: [:created_at, :updated_at], include: [:user, :workout ]
    end

    def show
        personal_library = PersonalLibrary.find(params[:id])
        render json: personal_library, except: [:created_at, :updated_at]
    end

    def create
        personal_library = PersonalLibrary.create(personal_library_params)
        render json: personal_library, except: [:created_at, :updated_at], status: 201
    end

    def update
        personal_library = PersonalLibrary.find_by(id: params[:id])
        personal_library.update(personal_library_params)
        render json: personal_library, except: [:created_at, :updated_at], status: 201
    end

    def destroy
        personal_library = PersonalLibrary.find_by(id: params[:id])
        personal_library.destroy
    end

    private

    def personal_library_params
        params.require(:personal_library).permit(:user_id, :workout_id)
    end
end
