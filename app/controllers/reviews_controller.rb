class ReviewsController < ApplicationController
  def new
    @review = Review.new
    # raise
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.create(review_params)
    @review.restaurant = @restaurant
    raise
    # if @review.save
    # end
  end

private

def review_params
  params.require(:review).permit(:content, :rating)
end

end
