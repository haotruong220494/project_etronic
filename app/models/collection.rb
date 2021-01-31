class Collection < ApplicationRecord
	ATTRS = [:title, :slug]

	validates :title, :slug, presence: true
  before_save :to_slug

  scope :cate_show, ->(type) { where location: type }

  def to_param
    "#{to_slug}#{id}"
  end

  private
  def to_slug
    self.slug = self.slug.to_s.parameterize
  end
end
