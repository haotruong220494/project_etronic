class ProductsController < ClientController
  include Response

  def show
    @collections_main = Collection.location("main")
    @product = Product.find_by_id(response_id(params[:slug]))
  end
end