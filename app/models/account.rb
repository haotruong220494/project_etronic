class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :async,
         :recoverable, :rememberable, :trackable, :confirmable

  enum role: { user: 0, admin: 1 }
  enum status: { active: 1, inactive: 2 }

  has_many :reviews, dependent: :destroy
  before_save :to_slug

  def to_param
    "#{to_slug}"
  end

  class << self
    def role_collection
      Account.roles.map do |role, _k|
        [I18n.t("admin.accounts.roles.#{role}"), role]
      end
    end

    def status_collection
      Account.statuses.map do |status, _k|
        [I18n.t("admin.accounts.status.#{status}"), status]
      end
    end
  end

  def active_for_authentication?
    super && self.active?
  end

  private
  def to_slug
    self.slug = self.slug.to_s.parameterize
  end
end
