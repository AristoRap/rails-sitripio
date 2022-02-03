class BookingsController < ApplicationController
  before_action :set_offer, only: %i[new create]

  def edit
  end

  def update
    if @booking.update(params[:booking])
      redirect_to bookings_path(@booking), notice: "Successfuly updated booking." #Again with the redirecting
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
    @booking = Booking.new(bookings_params)
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(@booking) #Shall it also redirect to the "Overview"?
    else
      render :new
    end

  end

  private

  def bookings_params
    params.require(:bookings).permit(:start_date, :end_date)
  end

  def set_offer
    @offer = Offer.find(params[:offer_id]) 
  end
 
end
