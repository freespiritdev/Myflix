class MoviesController < ApplicationController
  before_action :set_movie, only: [:show,:edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

   def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.director = params[:director]
    @movie.released = params[:released]
    
    if @movie.save
      redirect_to @movie, notice: 'Movie Added!'
    else
      render action: 'new'
    end
  end

  def edit
  end

  private
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title)
  end
end
