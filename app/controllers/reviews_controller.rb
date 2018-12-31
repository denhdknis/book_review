class ReviewsController < ApplicationController

  def new
  	@product = Product.find(params[:product_id])
  	@review = Review.new
  end

  def create
  	@review = Review.create(review_params)
  	@review.save
  	redirect_to controller: :products, action: :index
  end


  private
   def review_params
   	 params.require(:review).permit(:rate,:review).merge(product_id: params[:product_id])
   end
end
