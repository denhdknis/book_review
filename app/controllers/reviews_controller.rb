class ReviewsController < ApplicationController

  def new
  	@product = Product.find([:product_id])
  	@review = Review.new
  end

  def create
  	@review = Review.create(review_params)
  	redirect_to :controller :products, :action :index
  end


  private
   def review_params
   	 params.require(:product).permit(:rate,:review).marge(:product_id,params[:product_id])
   end
end
