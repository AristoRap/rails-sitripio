class BookingsController < ApplicationController
  before_action :set_offer, only: %i[create]

  def edit
  end

  def update
    if @booking.update(params[:booking])
      redirect_to offers_path, notice: "Successfuly updated booking." #Again with the redirecting
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to offers_path #Shall it also redirect to the "Overview"?
    else
      render :new
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

end
