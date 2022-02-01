class AddOfferToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :offer, null: false, foreign_key: true
  end
end
