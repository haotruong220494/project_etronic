class Admin::AccountsController < Admin::BaseController
  before_action :load_account
  def index
    @q = Account.ransack params[:q]
    @accounts = @q.result.page(params[:page]).order(created_at: :desc).per Settings.per_page.default
  end

  def show
  end

  def edit
  end

  def destroy
    @account.destroy
    flash[:success] = "Xóa danh mục bài viết công."
    redirect_to admin_accounts_path
  end

  def batch_update_status
    account = Account.find_by(slug: params[:slug])
    account.update_attributes(params_account)
    flash[:success] = "Cập nhật tài khoản viết công."
    redirect_to admin_accounts_path(page: params[:page])
  end

  private
  def load_account
    @account = Account.find_by(slug: params[:slug])
  end

   def params_account
    params.require(:account).permit(:status, :role)
  end
end
