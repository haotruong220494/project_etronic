class Product < ApplicationRecord
	ATTRS = [:name, :slug, :image, :description, :price, :promotional_price, :quantity,
    :collection_id, :status, :sale_off, :especially]

	has_one :image
  has_one_attached :image

	belongs_to :collection

	validates :name, :slug, :price, presence: true
  before_save :to_slug

  def to_param
    "#{to_slug}#{id}"
  end

  private
  def to_slug
    self.slug = self.slug.to_s.parameterize
  end
end
