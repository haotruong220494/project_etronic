class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :async,
         :recoverable, :rememberable, :trackable, :confirmable

  enum role: { user: 0, admin: 1 }

  has_many :reviews, dependent: :destroy
  before_save :to_slug

  def to_param
    "#{to_slug}"
  end

  private
  def to_slug
    self.slug = self.slug.to_s.parameterize
  end
end
