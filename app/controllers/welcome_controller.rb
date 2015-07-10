class WelcomeController < ApplicationController
  def index
    @movies = Movie.order('Created_at asc')
  end

  def movie_params
    params.require(:movie).permit(:title, :image)
  end
end
