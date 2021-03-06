class ArtistsController < ApplicationController

    # def index
    # end

    def create
        @artist = Artist.new(artist_params)
        if @artist.save 
            redirect_to @artist
        else 
            render :new
        end
    end

    def new
        @artist = Artist.new
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def update
        @artist = Artist.find(params[:id])
        if @artist.update(artist_params)
            redirect_to @artist
        else 
            render :edit
        end
    end

    # def destroy
    # end

    private 

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
