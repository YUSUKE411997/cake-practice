class Admins::GenresController < ApplicationController
  
  def index
    @genre = Genre.new
    @genres = Genre.all
  end
  
  def create
    @genre = Genre.new(params_genre)
    @genre.save
    redirect_to admins_genres_path
  end
  
  private
  
  def params_genre
    params.require(:genre).permit(:genre_name)
  end 
  
end

