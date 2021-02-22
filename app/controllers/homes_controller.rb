class HomesController < ClientController
  def index
  	@collections_main = Collection.location("main")
  	@blog = Article.all
    @product_slider = Collection.location("slider").last.products
    @product_especially = Product.where(especially: true).order(created_at: :desc).last
    @product_selling =  Product.order(quantity_sold: :desc).order(created_at: :desc).limit(8)
    @products_sale_off = Product.where(sale_off: true).order(created_at: :desc).limit(8)
  end
end
