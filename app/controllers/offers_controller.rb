class OffersController < ApplicationController
  before_action :set_offer, only: %i[show edit update destroy]

  def overview
    @user_offers = current_user.my_offers
    @booked_offers = current_user.offers
  end

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.organizer = current_user
    if @offer.save
      redirect_to offer_path(@offer), notice: 'Successfully created offer.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @offer.update_attributes(offer_params)
      redirect_to offer_path(@offer), notice: 'Successfully updated offer.'
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path, notice: 'Successfully destroyed offer.'
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :fee, :start_date, :end_date, :location, photos: [])
  end
end
