class GenresController < ApplicationController
    def index
        @genres = Genre.all 
    end
    def create
        @genre = Genre.create(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    def update
        @genre = Genre.find(params[:id])
        @genre = Genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find(params[:id])
    end
    def new
        @genre = Genre.new
    end
    def edit
        @genre = Genre.find(params[:id])
    end
end
