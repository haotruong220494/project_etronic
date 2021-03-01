class CollectionsController < ClientController
  def show
    @collection = Collection.find_by_id(response_id(params[:slug]))
    @q = @collection.products.ransack params[:q]
    @products = @q.result.page(params[:page]).order(created_at: :desc).per(Settings.per_page.client)
    @collections_main = Collection.location("main")
    @product_selling =  Product.order(quantity_sold: :desc).order(created_at: :desc).limit(5)
  end
end
