class Admin::ArticlesController < Admin::BaseController
  include Response

  before_action :load_article, only: [:edit, :update]

  def index
    @q = Article.ransack params[:q]
    @articles = @q.result.page(params[:page]).order(created_at: :desc).per Settings.per_page.default
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params_article
    if @article.save
      flash[:success] = "Tạo danh bài viết công."
      redirect_to admin_articles_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @article.update_attributes params_article
      flash[:success] = "Cập nhận danh bài viết công."
      redirect_to admin_articles_path(page: params[:page])
    else
      render "edit"
    end
  end

  def destroy
    Article.find_by_id(response_id(params[:id])).destroy
    flash[:success] = "Xóa danh mục bài viết công."
    redirect_to admin_articles_path
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge_later
    redirect_back(fallback_location: request.referer)
  end

  private
  def load_article
    @article = Article.find_by_id(response_id(params[:id]))
  end

  def params_article
    params.require(:article).permit Article::ATTRS
  end
end
