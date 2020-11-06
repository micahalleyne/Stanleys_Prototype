class VideosController < ApplicationController
    before_action :authenticate_user!

    def index
        @videos = Video.all.order("created_at DESC")
    end

    def show
    end

    def new
        @video = current_user.videos.build
    end

    def create
        @video = current_user.videos.build(video_params)

        if @video.save
            redirect_to @video, notice: "Yesss! It was posted!"
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @video.update(video_params)
            redirect_to @video, notice: "Congrats! Video was updated!"
        else
            render 'edit'
        end
    end

    def destroy
        @video.destroy
        redirect_to root_path
    end


    private

    def video_params
        params.require(:video).permit(:title, :attachment)
    end

    def find_video
        @video = Video.find(params[:id])
    end
end
