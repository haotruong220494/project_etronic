class AccountsController < ClientController
  before_action :load_account

  def show
  end

  def update
  end

  private
  def load_account
    @account = Account.find_by_id(response_id(params[:slug]))
  end
end
