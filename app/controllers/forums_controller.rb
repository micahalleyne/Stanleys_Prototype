class ForumsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :find_forum, only: [:show, :edit, :update, :destroy,]


    def index
        @forums = Forum.all.order("created_at DESC")
    end

    def show
        @forum.punch(request)
    end

    def new
        @forum = current_user.forums.build
        @topics = Topic.all
    end

    def create
        @forum = current_user.forums.build(forum_params)

        if @forum.save
            redirect_to @forum, notice: "Yesss! It was posted!"
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @forum.update(forum_params)
            redirect_to @forum, notice: "Congrats! Forum was updated!"
        else
            render 'edit'
        end
    end

    def destroy
        @forum.destroy
        redirect_to root_path
    end


    private

    def forum_params
        params.require(:forum).permit(:question, :description, :topic_id)
    end

    def find_forum
        @forum = Forum.find(params[:id])
    end
    
end