class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create]
  before_action :set_booking, only: %i[update destroy]

  def edit
  end

  def update
    if @booking.update(params[:booking])
      redirect_to offers_path(@offer), notice: "Successfuly updated booking."
    else
      render offers_path(@offer)
    end
  end

  def destroy
    @booking.destroy
  end

  def create
    @booking = Booking.new
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to overview_path
    else
      render offers_path(@offer)
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
