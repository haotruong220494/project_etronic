class RegistrationsController < Devise::RegistrationsController

  protected
  def sign_up_params
    params.require(:account).permit(:name, :email, :address, :birth_day, :phone_number, :avatar,
      :password, :password_confirmation)
  end

  def account_update_params
    params.require(:account).permit(:name, :email, :address, :birth_day, :phone_number, :avatar,
      :password, :password_confirmation, :current_password)
  end
end
