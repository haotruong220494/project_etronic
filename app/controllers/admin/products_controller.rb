class Admin::ProductsController < Admin::BaseController
  include Response

	before_action :load_product, only: [:show, :edit, :update]

  def index
    @q = Product.ransack params[:q]
    @products = @q.result.page(params[:page]).order(created_at: :desc).per Settings.per_page.default
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new params_product
    if @product.save
      flash[:success] = "Tạo sản phẩm thành công."
      redirect_to admin_products_path
    else
      render "new"
    end
  end

  def show
    @reviews = @product.reviews.select_parent_review
  end

  def edit
  end

  def update
    if @product.update_attributes params_product
      flash[:success] = "Cập nhận sản phẩm thành công."
      redirect_to admin_products_path(page: params[:page])
    else
      render "edit"
    end
  end

  def destroy
    Product.find_by_id(response_id(params[:id])).destroy
    flash[:success] = "Xóa sản phẩm mục thành công."
    redirect_to admin_products_path
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge_later
    redirect_back(fallback_location: request.referer)
  end

  private
  def load_product
    @product = Product.find_by_id(response_id(params[:id]))
  end

  def params_product
    params.require(:product).permit Product::ATTRS
  end
end
