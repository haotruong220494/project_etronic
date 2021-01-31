class Admin::CollectionsController < Admin::BaseController
  before_action :load_collection, only: [:edit, :update]

  def index
    @q = Collection.ransack params[:q]
    @collections = @q.result.page(params[:page]).per Settings.per_page.default
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
      redirect_to admin_collections_path
    else
      render "edit"
    end
  end

  def destroy
    Collection.find_by_id(params[:id].delete("^0-9").to_i).destroy
    flash[:success] = "Xóa danh mục mục thành công."
    redirect_to admin_collections_path
  end

  private
  def load_collection
    @collection = Collection.find_by_id(params[:id].delete("^0-9").to_i)
  end

  def params_collection
    params.require(:collection).permit Collection::ATTRS
  end
end	