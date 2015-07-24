class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
  
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
  
    def review_params
      params.require(:review).permit(:comment)
    end
end
