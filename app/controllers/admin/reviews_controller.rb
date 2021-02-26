class Admin::ReviewsController < Admin::BaseController
  before_action :load_account

  def show
    @subreviews = Review.select_sub_review(@review.id)
  end

  def destroy
    @review.destroy
    flash[:success] = "Xóa sản bình luận thành công."
    redirect_to admin_product_path(id: params[:product_id])
  end

  private
  def load_account
    @review = Review.find_by_id(params[:id])
  end
end
