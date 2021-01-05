class LandingController < ApplicationController

    def index
        @songs = Song.all
        @videos = Video.all
        @blogs = Blog.all
        @objects = @songs + @videos + @blogs 
        # @objects = @objects.all.sort_by {|obj| obj.hits}
    end


end