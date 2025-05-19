class ReviewsController < ApplicationController
   def new
   @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build
  end

  def edit
  end
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
if @review.save
      redirect_to movie_path(@movie), notice: "Review posted!"
    else
       flash.now[:alert] = @review.errors.full_messages.join(", ")
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:ratings, :comment)
  end
end

