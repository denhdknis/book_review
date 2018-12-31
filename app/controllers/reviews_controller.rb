class ReviewsController < ApplicationController

  def new
  	@product = Product.find([:product.id])
  	@review = Review.new
  end

  def create
  	@review = Review.new
  	@review.create(review_params)
  end


  private
   def review_params
   	 params.require(:product).permit(:rate,:review)
   end

end
