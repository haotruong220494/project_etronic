class Collection < ApplicationRecord
	ATTRS = [:title, :slug, :location, :image]

  has_many :products, dependent: :destroy
  has_one :image
  has_one_attached :image

	validates :title, :slug, presence: true
  before_save :to_slug

  scope :location, ->(type) { where location: type }

  def to_param
    "#{to_slug}#{id}"
  end

  class << self
    def price_data
      price = {
        lt_2tr: "Dưới 2.000.000 vnđ",
        gte_2tr_lt_5tr: "2.000.000 vnđ - 4.999.999 vnđ",
        gte_5tr_lt_10tr: "5.000.000 vnđ - 9.999.999 vnđ",
        gte_10tr: "Trên 10.000.000 vnđ",
      }
    end
  end

  private
  def to_slug
    self.slug = self.slug.to_s.parameterize
  end
end
