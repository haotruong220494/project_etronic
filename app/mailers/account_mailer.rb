class AccountMailer < ApplicationMailer
  default from: Figaro.env.email_default_from

  def resend_info resource
    mail(to: resource.email, subject: t("mailer.account.resend_info.subject")) do |format|
      format.html do
        render locals: {
          email: resource.email,
          password: resource.default_password,
          path_login: new_account_session_url(code: resource.contract_code)
        }
      end
    end
  end

  def send_registration_info email, password, contract_code
    mail(to: email, subject: t("mailer.account.resend_info.subject")) do |format|
      format.html do
        render locals: {
          email: email,
          password: password,
          path_login: new_account_session_url(code: contract_code)
        }
      end
    end
  end

  def send_update_info options = {}
    mail(to: options[:email], subject: t("mailer.account.resend_info.subject")) do |format|
      format.html do
        render locals: {
          options: options
        }
      end
    end
  end

  def send_link_download_csv options = {}
    mail(to: options[:email], subject: t("mailer.account.customer_csv.subject")) do |format|
      format.html do
        render locals: {
          options: options
        }
      end
    end
  end
end
