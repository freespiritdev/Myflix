class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_movie

  def new
    @review = Review.new
  end

  def index
    @movies = Movie.all
  end


  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.movie_id = @movie.id

    if @review.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def update
    @review.update(review_params)
  end

  private
    
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
  
    def review_params
      params.require(:review).permit(:comment)
    end
end
