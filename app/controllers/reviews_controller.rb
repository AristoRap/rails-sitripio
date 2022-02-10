class ReviewsController < ApplicationController
  before_action :set_offer, only: [:create]
  before_action :set_review, only: %i[update destroy]

  def create
    @review = Review.new(review_params)
    @review.offer = @offer
    @review.user = current_user
    if @review.save
      redirect_to offers_path(@offer)
    else
      render offers_path(@offer)
    end
  end

  def update
    if @review.update(params[:review])
      redirect_to offers_path(@offer), notice: "Successfuly updated review."
    else
      render offers_path(@offer)
    end
  end

  def destroy
    @review.destroy
  end

  private

  def review_params
    params.require(:reviews).permit(:rating, :content)
  end

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
