class Admin::CollectionsController < Admin::BaseController
  before_action :load_collection, only: [:edit, :update]

  def index
    @q = Collection.ransack params[:q]
    @collections = @q.result.page(params[:page]).order(created_at: :desc).per Settings.per_page.default
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new params_collection
    if @collection.save
      flash[:success] = "Tạo danh mục thành công."
      redirect_to admin_collections_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @collection.update_attributes params_collection
      flash[:success] = "Cập nhận danh mục thành công."
      redirect_to admin_collections_path(page: params[:page])
    else
      render "edit"
    end
  end

  def destroy
    Collection.find_by_id(params[:id].delete("^0-9").to_i).destroy
    flash[:success] = "Xóa danh mục mục thành công."
    redirect_to admin_collections_path
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge_later
    redirect_back(fallback_location: request.referer)
  end

  private
  def load_collection
    @collection = Collection.find_by_id(params[:id].delete("^0-9").to_i)
  end

  def params_collection
    params.require(:collection).permit Collection::ATTRS
  end
end
