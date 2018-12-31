class ProductsController < ApplicationController
	layout 'review_site'
  def index
    # productsテーブルから最新順に作品を２０件取得する
    @products = Product.order('id ASC')
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('title LIKE ?', "%#{params[:keyword]}%")
  end

end
