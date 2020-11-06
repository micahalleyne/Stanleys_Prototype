class SongsController < ApplicationController
    before_action :authenticate_user!

    def index
        @songs = Song.all.order("created_at DESC")
    end

    def show
    end

    def new
        @song = current_user.songs.build
    end

    def create
        @song = current_user.songs.build(song_params)

        if @song.save
            redirect_to @song, notice: "Yesss! It was posted!"
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @song.update(song_params)
            redirect_to @song, notice: "Congrats! Song was updated!"
        else
            render 'edit'
        end
    end

    def destroy
        @song.destroy
        redirect_to root_path
    end


    private

    def song_params
        params.require(:song).permit(:title, :attachment)
    end

    def find_song
        @song = Song.find(params[:id])
    end
end
