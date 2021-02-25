class Review < ApplicationRecord
  belongs_to :product
  belongs_to :account
  # has_many :reaction, as: :reaction_refs, dependent: :destroy
  has_many :subreviews, class_name: 'Review', foreign_key: 'review_id', dependent: :destroy

  validates :body, presence: true

  scope :select_parent_review, -> { where(review_id: nil) }
end
