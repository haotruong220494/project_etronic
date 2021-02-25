class ReviewsController < ApplicationController
  before_action :load_review, only: [:edit, :update, :destroy]

  def show_subreview
    @current_review = Review.find_by(id: params[:review_id])
    @subreviews = Review.where(review_id: params[:review_id])
    respond_to do |format|
      format.html { render @subreviews }
      format.js
    end
  end

  def create_subreview
    @review_parent = Review.find_by(id: params[:parent_id])
    @subreview_parent = @review_parent.subreviews.last
    @review = @review_parent.subreviews.build(review_params)
    @review.product_id = @review_parent.product_id
    @review.account_id = current_account.id

    if @review.save
      respond_to do |format|
        format.html { render @review }
        format.js
      end
    else
      respond_to do |format|
        format.html { render @review }
        format.js
      end
    end
  end

  def index
    @product = Product.find(params[:product_id])
    @review = @product.review.select_parent_review

    respond_to do |format|
      format.html { redirect_to @review }
      format.js
    end
  end

  def create
    @review = current_account.reviews.build(review_params)
    @review.product_id = params[:product_id]
    if @review.save
      respond_to do |format|
        format.html { render @review }
        format.js
      end
    else
      respond_to do |format|
        format.html { render @review }
        format.js
      end
    end
  end

  def destroy
    @review.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end

  # def edit
  #   respond_to do |format|
  #     format.html { render @review }
  #     format.js
  #   end
  # end

  # def update
  #   if @review.update(review_params)
  #     respond_to do |format|
  #       format.html { render @review }
  #       format.js
  #     end
  #   else
  #     respond_to do |format|
  #       format.html { render @review }
  #       format.js
  #     end
  #   end
  # end

  private

  def review_params
    params.require(:review).permit(:body, :product_id)
  end

  def load_review
    @review = Review.find_by(id: params[:id])
  end
end
