class ProductsController < ApplicationController
	layout 'review_site'
  def index
    # productsテーブルから最新順に作品を２０件取得する
    @products = Product.order('id ASC').page(params[:page]).per(10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('title LIKE ?', "%#{params[:keyword]}%")
  end

end
