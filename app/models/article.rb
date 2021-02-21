class Article < ApplicationRecord
	ATTRS = [:title, :slug, :image, :description, :status]

	has_one :image
  has_one_attached :image

  validates :title, :slug, :description, presence: true
  before_save :to_slug

  def to_param
    "#{to_slug}#{id}"
  end

  private
  def to_slug
    self.slug = self.slug.to_s.parameterize
  end
end