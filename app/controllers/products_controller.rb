class ProductsController < ClientController
  def index
    @collections_main = Collection.location("main")
    @q = Product.ransack params[:q]
    @products = @q.result.page(params[:page]).order(created_at: :desc).per Settings.per_page.client
    @search_key = params[:q][:name_cont] if params[:q].present?
  end

  def show
    @collections_main = Collection.location("main")
    @product = Product.find_by_id(response_id(params[:slug]))
    @product_selling =  Product.order(quantity_sold: :desc).order(created_at: :desc).limit(8)
  end
end
